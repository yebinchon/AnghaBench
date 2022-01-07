
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 size_t DevicePathNodeLength (int *) ;
 scalar_t__ DevicePathSubType (int *) ;
 scalar_t__ DevicePathType (int *) ;
 scalar_t__ memcmp (int *,int *,size_t) ;

bool
efi_devpath_match_node(EFI_DEVICE_PATH *devpath1, EFI_DEVICE_PATH *devpath2)
{
 size_t len;

 if (devpath1 == ((void*)0) || devpath2 == ((void*)0))
  return (0);
 if (DevicePathType(devpath1) != DevicePathType(devpath2) ||
     DevicePathSubType(devpath1) != DevicePathSubType(devpath2))
  return (0);
 len = DevicePathNodeLength(devpath1);
 if (len != DevicePathNodeLength(devpath2))
  return (0);
 if (memcmp(devpath1, devpath2, len) != 0)
  return (0);
 return (1);
}
