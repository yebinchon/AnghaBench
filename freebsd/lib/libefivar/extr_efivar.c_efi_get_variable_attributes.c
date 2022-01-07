
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int efi_guid_t ;


 int efi_get_variable (int ,char const*,int *,int *,int *) ;

int
efi_get_variable_attributes(efi_guid_t guid, const char *name,
    uint32_t *attributes)
{


 return efi_get_variable(guid, name, ((void*)0), ((void*)0), attributes);
}
