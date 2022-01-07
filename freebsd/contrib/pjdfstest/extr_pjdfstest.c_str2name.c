
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_name; int * n_str; } ;


 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
str2name(struct name *names, char *name)
{
 unsigned int i;

 for (i = 0; names[i].n_str != ((void*)0); i++) {
  if (strcmp(names[i].n_str, name) == 0)
   return (names[i].n_name);
 }
 return (-1);
}
