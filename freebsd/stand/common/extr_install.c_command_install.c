
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERROR ;
 char* command_errmsg ;
 int install (char*) ;
 int setenv (char*,char*,int) ;
 int strcmp (char*,char*) ;
 int unsetenv (char*) ;

__attribute__((used)) static int
command_install(int argc, char *argv[])
{
 int argidx;

 unsetenv("install_format");

 argidx = 1;
 while (1) {
  if (argc == argidx) {
   command_errmsg =
       "usage: install [--format] <URL>";
   return (CMD_ERROR);
  }
  if (!strcmp(argv[argidx], "--format")) {
   setenv("install_format", "yes", 1);
   argidx++;
   continue;
  }
  break;
 }

 return (install(argv[argidx]));
}
