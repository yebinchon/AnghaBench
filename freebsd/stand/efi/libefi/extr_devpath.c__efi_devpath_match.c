
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 scalar_t__ IsDevicePathEnd (int *) ;
 scalar_t__ IsDevicePathType (int *,int ) ;
 int MEDIA_DEVICE_PATH ;
 int * NextDevicePathNode (int *) ;
 int efi_devpath_match_node (int *,int *) ;

__attribute__((used)) static bool
_efi_devpath_match(EFI_DEVICE_PATH *devpath1, EFI_DEVICE_PATH *devpath2,
    bool ignore_media)
{

 if (devpath1 == ((void*)0) || devpath2 == ((void*)0))
  return (0);

 while (1) {
  if (ignore_media &&
      IsDevicePathType(devpath1, MEDIA_DEVICE_PATH) &&
      IsDevicePathType(devpath2, MEDIA_DEVICE_PATH))
   return (1);
  if (!efi_devpath_match_node(devpath1, devpath2))
   return 0;
  if (IsDevicePathEnd(devpath1))
   break;
  devpath1 = NextDevicePathNode(devpath1);
  devpath2 = NextDevicePathNode(devpath2);
 }
 return (1);
}
