
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {int * name; } ;


 int MAXLIST ;
 int strcmp (char*,int *) ;

__attribute__((used)) static struct varlist *
findlistvar(
 struct varlist *list,
 char *name
 )
{
 struct varlist *vl;

 for (vl = list; vl < list + MAXLIST && vl->name != ((void*)0); vl++)
  if (!strcmp(name, vl->name))
   return vl;
 if (vl < list + MAXLIST)
  return vl;

 return ((void*)0);
}
