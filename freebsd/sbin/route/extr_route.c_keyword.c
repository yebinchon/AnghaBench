
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytab {int kt_i; int * kt_cp; } ;


 struct keytab* keywords ;
 scalar_t__ strcmp (int *,char const*) ;

int
keyword(const char *cp)
{
 const struct keytab *kt = keywords;

 while (kt->kt_cp != ((void*)0) && strcmp(kt->kt_cp, cp) != 0)
  kt++;
 return (kt->kt_i);
}
