
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atoi (char*) ;
 scalar_t__ ifunc () ;

int
main(int argc, char **argv)
{

 if (argc != 2)
  return 1;
 return ifunc() != atoi(argv[1]);
}
