
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int EFI_DEVICE_PATH ;




 int DevicePathType (int *) ;

 int IsDevicePathEnd (int *) ;


 int * NextDevicePathNode (int *) ;
 int asprintf (char**,char*,int,char*) ;
 char* efi_acpi_dev_path (int *,char*) ;
 char* efi_hw_dev_path (int *,char*) ;
 char* efi_media_dev_path (int *,char*) ;
 char* efi_messaging_dev_path (int *,char*) ;
 int free (char*) ;

__attribute__((used)) static char *
efi_translate_devpath(EFI_DEVICE_PATH *devpath)
{
 EFI_DEVICE_PATH *dp = NextDevicePathNode(devpath);
 char *name, *ptr;
 uint8_t type;

 if (!IsDevicePathEnd(devpath))
  name = efi_translate_devpath(dp);
 else
  return (((void*)0));

 ptr = ((void*)0);
 type = DevicePathType(devpath);
 switch (type) {
 case 130:
  ptr = efi_hw_dev_path(devpath, name);
  break;
 case 132:
  ptr = efi_acpi_dev_path(devpath, name);
  break;
 case 128:
  ptr = efi_messaging_dev_path(devpath, name);
  break;
 case 129:
  ptr = efi_media_dev_path(devpath, name);
  break;
 case 131:
 default:
  if (asprintf(&ptr, "UnknownPath(%x)%s", type,
      name? name : "") < 0)
   ptr = ((void*)0);
  break;
 }

 if (ptr != ((void*)0)) {
  free(name);
  name = ptr;
 }
 return (name);
}
