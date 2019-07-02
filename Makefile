all: hello

hello: hello.o
	g++ -g -Wall hello.o -o hello -std=c++14

hello.o: hello.cpp
	g++ -c -g hello.cpp -o hello.o -std=c++14

run: all
	./hello

clean:
	rm -rf *.o hello
