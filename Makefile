all: clean compile run

clean:
	rm -f *.o xc *.tst *.s

compile:
	gcc -o xc xc.c

run:
	./xc hello.c           > level1.tst
	./xc -s hello.c        > hello.s
	./xc xc.c hello.c      > level2.tst
	./xc xc.c xc.c hello.c > level3.tst

.PHONY: clean compile run
