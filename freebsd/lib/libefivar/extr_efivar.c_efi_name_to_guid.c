
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int efi_guid_t ;
struct TYPE_3__ {int guid; int name; } ;


 int efi_guid_tbl_compile () ;
 int efi_str_to_guid (char const*,int *) ;
 TYPE_1__* guid_tbl ;
 size_t nitems (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;

int
efi_name_to_guid(const char *name, efi_guid_t *guid)
{
 size_t i;

 efi_guid_tbl_compile();
 for (i = 0; i < nitems(guid_tbl); i++) {
  if (strcmp(name, guid_tbl[i].name) == 0) {
   *guid = guid_tbl[i].guid;
   return (0);
  }
 }
 return (efi_str_to_guid(name, guid));
}
