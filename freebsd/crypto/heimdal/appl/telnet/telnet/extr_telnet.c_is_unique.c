
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
is_unique(char *name, char **as, char **ae)
{
 char **ap;
 int n;

 n = strlen(name) + 1;
 for (ap = as; ap < ae; ap++)
  if (strncasecmp(*ap, name, n) == 0)
   return(0);
 return (1);
}
