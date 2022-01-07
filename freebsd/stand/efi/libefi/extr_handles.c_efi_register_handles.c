
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct entry {int dummy; } ;
struct devsw {int dummy; } ;
struct TYPE_5__ {int unit; struct devsw* dev; int * alias; void* handle; } ;
typedef void* EFI_HANDLE ;


 TYPE_1__* entry ;
 TYPE_1__* malloc (size_t) ;
 int nentries ;
 TYPE_1__* realloc (TYPE_1__*,size_t) ;

int
efi_register_handles(struct devsw *sw, EFI_HANDLE *handles,
    EFI_HANDLE *aliases, int count)
{
 size_t sz;
 int idx, unit;

 idx = nentries;
 nentries += count;
 sz = nentries * sizeof(struct entry);
 entry = (entry == ((void*)0)) ? malloc(sz) : realloc(entry, sz);
 for (unit = 0; idx < nentries; idx++, unit++) {
  entry[idx].handle = handles[unit];
  if (aliases != ((void*)0))
   entry[idx].alias = aliases[unit];
  else
   entry[idx].alias = ((void*)0);
  entry[idx].dev = sw;
  entry[idx].unit = unit;
 }
 return (0);
}
