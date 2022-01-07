
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int efi_guid_t ;


 int uuid_is_nil (int const*,int *) ;

int
efi_guid_is_zero(const efi_guid_t *guid)
{
 uint32_t status;

 return uuid_is_nil(guid, &status);
}
