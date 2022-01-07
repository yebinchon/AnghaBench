
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 scalar_t__ DevicePathType (int *) ;
 int IsDevicePathEnd (int *) ;
 scalar_t__ MEDIA_DEVICE_PATH ;
 int * NextDevicePathNode (int *) ;

EFI_DEVICE_PATH *
efi_devpath_to_media_path(EFI_DEVICE_PATH *path)
{

 while (!IsDevicePathEnd(path)) {
  if (DevicePathType(path) == MEDIA_DEVICE_PATH)
   return (path);
  path = NextDevicePathNode(path);
 }
 return (((void*)0));
}
