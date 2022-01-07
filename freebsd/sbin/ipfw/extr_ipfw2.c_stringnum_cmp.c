
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

int
stringnum_cmp(const char *a, const char *b)
{
 int la, lb;

 la = strlen(a);
 lb = strlen(b);

 if (la > lb)
  return (1);
 else if (la < lb)
  return (-01);

 return (strcmp(a, b));
}
