
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int usage (char*) ;
 int write_sh_tests (char*,int ) ;

int
main(int argc, char *argv[])
{
 int opt;

 while ((opt = getopt(argc, argv, "s:")) != -1) {
  switch (opt) {
  case 's':
   return (write_sh_tests(argv[0], atoi(optarg)));
  default:
   usage(argv[0]);
   exit(1);
  }
 }
 usage(argv[0]);
 exit(1);
}
