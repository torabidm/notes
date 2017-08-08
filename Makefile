
commit: 
	tar -cz *.tex | openssl enc -e -aes-256-cbc -out material.enc
	git commit material.enc -m "a new commit"

update:
	git pull
	openssl enc -d -aes-256-cbc -in material.enc  | tar -xz
