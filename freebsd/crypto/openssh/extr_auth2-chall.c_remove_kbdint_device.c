
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 TYPE_1__** devices ;
 scalar_t__ strcmp (int ,char const*) ;

void
remove_kbdint_device(const char *devname)
{
 int i, j;

 for (i = 0; devices[i] != ((void*)0); i++)
  if (strcmp(devices[i]->name, devname) == 0) {
   for (j = i; devices[j] != ((void*)0); j++)
    devices[j] = devices[j+1];
   i--;
  }
}
