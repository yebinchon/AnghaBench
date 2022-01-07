
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 size_t DevicePathNodeLength (int *) ;
 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 scalar_t__ IsDevicePathEnd (int *) ;
 int * NextDevicePathNode (int *) ;
 scalar_t__ memcmp (int *,int *,size_t) ;

bool
efi_devpath_is_prefix(EFI_DEVICE_PATH *prefix, EFI_DEVICE_PATH *path)
{
 size_t len;

 if (prefix == ((void*)0) || path == ((void*)0))
  return (0);

 while (1) {
  if (IsDevicePathEnd(prefix))
   break;

  if (DevicePathType(prefix) != DevicePathType(path) ||
      DevicePathSubType(prefix) != DevicePathSubType(path))
   return (0);

  len = DevicePathNodeLength(prefix);
  if (len != DevicePathNodeLength(path))
   return (0);

  if (memcmp(prefix, path, len) != 0)
   return (0);

  prefix = NextDevicePathNode(prefix);
  path = NextDevicePathNode(path);
 }
 return (1);
}
