
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct devsw {int dummy; } ;
struct TYPE_2__ {scalar_t__ handle; int unit; int extra; int * alias; struct devsw* dev; } ;
typedef scalar_t__ EFI_HANDLE ;


 int ENOENT ;
 TYPE_1__* entry ;
 int nentries ;

int
efi_handle_update_dev(EFI_HANDLE h, struct devsw *dev, int unit,
    uint64_t guid)
{
 int idx;

 for (idx = 0; idx < nentries; idx++) {
  if (entry[idx].handle != h)
   continue;
  entry[idx].dev = dev;
  entry[idx].unit = unit;
  entry[idx].alias = ((void*)0);
  entry[idx].extra = guid;
  return (0);
 }

 return (ENOENT);
}
