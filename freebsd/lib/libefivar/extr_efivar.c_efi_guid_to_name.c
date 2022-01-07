
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int efi_guid_t ;
struct TYPE_3__ {int name; int guid; } ;


 int efi_guid_tbl_compile () ;
 int efi_guid_to_str (int *,char**) ;
 TYPE_1__* guid_tbl ;
 size_t nitems (TYPE_1__*) ;
 char* strdup (int ) ;
 scalar_t__ uuid_equal (int *,int *,int *) ;

int
efi_guid_to_name(efi_guid_t *guid, char **name)
{
 size_t i;
 uint32_t status;

 efi_guid_tbl_compile();
 for (i = 0; i < nitems(guid_tbl); i++) {
  if (uuid_equal(guid, &guid_tbl[i].guid, &status)) {
   *name = strdup(guid_tbl[i].name);
   return (0);
  }
 }
 return (efi_guid_to_str(guid, name));
}
