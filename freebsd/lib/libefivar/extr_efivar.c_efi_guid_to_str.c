
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int efi_guid_t ;


 scalar_t__ uuid_s_ok ;
 int uuid_to_string (int const*,char**,scalar_t__*) ;

int
efi_guid_to_str(const efi_guid_t *guid, char **sp)
{
 uint32_t status;


 uuid_to_string(guid, sp, &status);

 return (status == uuid_s_ok ? 0 : -1);
}
