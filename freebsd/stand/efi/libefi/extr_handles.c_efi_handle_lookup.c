
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct devsw {int dummy; } ;
struct TYPE_2__ {scalar_t__ handle; scalar_t__ alias; int unit; int extra; struct devsw* dev; } ;
typedef scalar_t__ EFI_HANDLE ;


 int ENOENT ;
 TYPE_1__* entry ;
 int nentries ;

int
efi_handle_lookup(EFI_HANDLE h, struct devsw **dev, int *unit, uint64_t *extra)
{
 int idx;

 for (idx = 0; idx < nentries; idx++) {
  if (entry[idx].handle != h && entry[idx].alias != h)
   continue;
  if (dev != ((void*)0))
   *dev = entry[idx].dev;
  if (unit != ((void*)0))
   *unit = entry[idx].unit;
  if (extra != ((void*)0))
   *extra = entry[idx].extra;
  return (0);
 }
 return (ENOENT);
}
