
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int poke (int*,int ) ;

int
main(int argc, char *argv[])
{
 int b[10];

 poke(b, atoi(argv[1]));
 return 0;
}
