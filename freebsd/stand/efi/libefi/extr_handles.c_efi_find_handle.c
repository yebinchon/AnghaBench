
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devsw {int dummy; } ;
struct TYPE_2__ {int unit; int * handle; struct devsw* dev; } ;
typedef int * EFI_HANDLE ;


 TYPE_1__* entry ;
 int nentries ;

EFI_HANDLE
efi_find_handle(struct devsw *dev, int unit)
{
 int idx;

 for (idx = 0; idx < nentries; idx++) {
  if (entry[idx].dev != dev)
   continue;
  if (entry[idx].unit != unit)
   continue;
  return (entry[idx].handle);
 }
 return (((void*)0));
}
