
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;
typedef int CHAR16 ;


 int * efi_name_to_devpath16 (int *) ;
 int free (int *) ;
 scalar_t__ utf8_to_ucs2 (char const*,int **,size_t*) ;

EFI_DEVICE_PATH *
efi_name_to_devpath(const char *path)
{
 EFI_DEVICE_PATH *devpath;
 CHAR16 *uv;
 size_t ul;

 uv = ((void*)0);
 if (utf8_to_ucs2(path, &uv, &ul) != 0)
  return (((void*)0));
 devpath = efi_name_to_devpath16(uv);
 free(uv);
 return (devpath);
}
