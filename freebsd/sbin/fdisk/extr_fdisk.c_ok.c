
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LBUF ;
 int exit (int) ;
 int fflush (int ) ;
 int * fgets (scalar_t__*,int ,int ) ;
 scalar_t__* lbuf ;
 int printf (char*,char const*) ;
 int stdin ;
 int stdout ;
 int strcmp (scalar_t__*,char*) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static int
ok(const char *str)
{
 printf("%s [n] ", str);
 fflush(stdout);
 if (fgets(lbuf, LBUF, stdin) == ((void*)0))
  exit(1);
 lbuf[strlen(lbuf)-1] = 0;

 if (*lbuf &&
  (!strcmp(lbuf, "yes") || !strcmp(lbuf, "YES") ||
   !strcmp(lbuf, "y") || !strcmp(lbuf, "Y")))
  return 1;
 else
  return 0;
}
