
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ __findenv (char const*,int,int*) ;
 char** environ ;
 int errno ;

int
unsetenv(const char *name)
{
 char **P;
 const char *np;
 int offset = 0;

 if (!name || !*name) {
  errno = EINVAL;
  return (-1);
 }
 for (np = name; *np && *np != '='; ++np)
  ;
 if (*np) {
  errno = EINVAL;
  return (-1);
 }


 while (__findenv(name, (int)(np - name), &offset)) {
  for (P = &environ[offset];; ++P)
   if (!(*P = *(P + 1)))
    break;
 }
 return (0);
}
