
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** reallocarray (char**,size_t,int) ;

__attribute__((used)) static int
append(char *cp, char ***ap, size_t *np)
{
 char **tmp;

 if ((tmp = reallocarray(*ap, *np + 1, sizeof(*tmp))) == ((void*)0))
  return -1;
 tmp[(*np)] = cp;
 (*np)++;
 *ap = tmp;
 return 0;
}
