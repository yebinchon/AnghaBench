
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int efi_set_variable (int ,char const*,int *,int ,int ) ;

int
efi_del_variable(efi_guid_t guid, const char *name)
{


 return efi_set_variable(guid, name, ((void*)0), 0, 0);
}
