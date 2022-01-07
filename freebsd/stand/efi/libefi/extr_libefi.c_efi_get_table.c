
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int NumberOfTableEntries; TYPE_1__* ConfigurationTable; } ;
struct TYPE_3__ {void* VendorTable; int VendorGuid; } ;
typedef int EFI_GUID ;


 TYPE_2__* ST ;
 int memcmp (int *,int *,int) ;

void *
efi_get_table(EFI_GUID *tbl)
{
 EFI_GUID *id;
 int i;

 for (i = 0; i < ST->NumberOfTableEntries; i++) {
  id = &ST->ConfigurationTable[i].VendorGuid;
  if (!memcmp(id, tbl, sizeof(EFI_GUID)))
   return (ST->ConfigurationTable[i].VendorTable);
 }
 return (((void*)0));
}
