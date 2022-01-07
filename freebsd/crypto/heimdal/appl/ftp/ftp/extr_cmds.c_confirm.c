
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int interactive ;
 int printf (char*,char*,char*) ;
 int stdin ;
 int stdout ;

int
confirm(char *cmd, char *file)
{
 char buf[BUFSIZ];

 if (!interactive)
  return (1);
 printf("%s %s? ", cmd, file);
 fflush(stdout);
 if (fgets(buf, sizeof buf, stdin) == ((void*)0))
  return (0);
 return (*buf == 'y' || *buf == 'Y');
}
