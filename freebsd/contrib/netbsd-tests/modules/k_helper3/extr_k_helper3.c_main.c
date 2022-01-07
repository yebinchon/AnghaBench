
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int load (char*,char*) ;

int
main(int argc, char *argv[])
{
 assert(argc == 3);

 return load(argv[1], argv[2]);
}
