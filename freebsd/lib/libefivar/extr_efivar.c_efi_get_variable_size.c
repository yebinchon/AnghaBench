
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_guid_t ;


 int efi_get_variable (int ,char const*,int *,size_t*,int *) ;

int
efi_get_variable_size(efi_guid_t guid, const char *name,
    size_t *size)
{



 *size = 0;
 return efi_get_variable(guid, name, ((void*)0), size, ((void*)0));
}
