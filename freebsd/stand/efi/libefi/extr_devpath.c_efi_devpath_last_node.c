
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 scalar_t__ IsDevicePathEnd (int *) ;
 int * NextDevicePathNode (int *) ;

EFI_DEVICE_PATH *
efi_devpath_last_node(EFI_DEVICE_PATH *devpath)
{

 if (IsDevicePathEnd(devpath))
  return (((void*)0));
 while (!IsDevicePathEnd(NextDevicePathNode(devpath)))
  devpath = NextDevicePathNode(devpath);
 return (devpath);
}
