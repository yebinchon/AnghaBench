
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int efi_guid_t ;


 int EFI_VARIABLE_APPEND_WRITE ;
 int efi_set_variable (int ,char const*,int *,size_t,int) ;

int
efi_append_variable(efi_guid_t guid, const char *name,
    uint8_t *data, size_t data_size, uint32_t attributes)
{

 return efi_set_variable(guid, name, data, data_size,
     attributes | EFI_VARIABLE_APPEND_WRITE);
}
