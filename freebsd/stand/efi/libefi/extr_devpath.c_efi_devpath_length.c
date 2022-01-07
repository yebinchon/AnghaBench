
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINTN ;
typedef int EFI_DEVICE_PATH ;


 scalar_t__ DevicePathNodeLength (int *) ;
 int IsDevicePathEnd (int *) ;
 int * NextDevicePathNode (int *) ;

UINTN
efi_devpath_length(EFI_DEVICE_PATH *path)
{
 EFI_DEVICE_PATH *start = path;

 while (!IsDevicePathEnd(path))
  path = NextDevicePathNode(path);
 return ((UINTN)path - (UINTN)start) + DevicePathNodeLength(path);
}
