
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINTN ;
struct TYPE_4__ {size_t NumberOfTableEntries; TYPE_1__* ConfigurationTable; } ;
struct TYPE_3__ {unsigned long VendorTable; int VendorGuid; } ;
typedef int EFI_GUID ;


 int CMD_OK ;
 TYPE_2__* ST ;
 int efi_guid_to_name (int *,char**) ;
 int free (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
command_configuration(int argc, char *argv[])
{
 UINTN i;
 char *name;

 printf("NumberOfTableEntries=%lu\n",
  (unsigned long)ST->NumberOfTableEntries);

 for (i = 0; i < ST->NumberOfTableEntries; i++) {
  EFI_GUID *guid;

  printf("  ");
  guid = &ST->ConfigurationTable[i].VendorGuid;

  if (efi_guid_to_name(guid, &name) == 1) {
   printf(name);
   free(name);
  } else {
   printf("Error while translating UUID to name");
  }
  printf(" at %p\n", ST->ConfigurationTable[i].VendorTable);
 }

 return (CMD_OK);
}
