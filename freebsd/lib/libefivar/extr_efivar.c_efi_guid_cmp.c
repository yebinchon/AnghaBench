
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int efi_guid_t ;


 int uuid_compare (int const*,int const*,int *) ;

int
efi_guid_cmp(const efi_guid_t *guid1, const efi_guid_t *guid2)
{
 uint32_t status;

 return uuid_compare(guid1, guid2, &status);
}
