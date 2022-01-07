
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int efi_guid_t ;


 int uuid_from_string (char const*,int *,scalar_t__*) ;
 scalar_t__ uuid_s_ok ;

int
efi_str_to_guid(const char *s, efi_guid_t *guid)
{
 uint32_t status;


 uuid_from_string(s, guid, &status);

 return (status == uuid_s_ok ? 0 : -1);
}
