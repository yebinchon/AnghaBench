
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int * name; } ;


 TYPE_1__* capstrmap ;
 scalar_t__ strcmp (int *,char const*) ;

int
vm_capability_name2type(const char *capname)
{
 int i;

 for (i = 0; capstrmap[i].name != ((void*)0) && capname != ((void*)0); i++) {
  if (strcmp(capstrmap[i].name, capname) == 0)
   return (capstrmap[i].type);
 }

 return (-1);
}
