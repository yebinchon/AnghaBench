
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __progname ;
 int be_verbose ;
 int compile_opts_only ;
 int printf (char*) ;
 int showOptions () ;
 int ssh_get_progname (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int testAPI () ;
 int testOutput () ;

int
main(int argc, char *argv[])
{
 printf("Platform-independent login recording test driver\n");

 __progname = ssh_get_progname(argv[0]);
 if (argc == 2) {
  if (strncmp(argv[1], "-i", 3) == 0)
   compile_opts_only = 1;
  else if (strncmp(argv[1], "-v", 3) == 0)
   be_verbose=1;
 }

 if (!compile_opts_only) {
  if (be_verbose && !testOutput())
   return 1;

  if (!testAPI())
   return 1;
 }

 showOptions();

 return 0;
}
