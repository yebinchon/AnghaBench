
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_DEVICE_PATH ;


 int _efi_devpath_match (int *,int *,int) ;

bool
efi_devpath_match(EFI_DEVICE_PATH *devpath1, EFI_DEVICE_PATH *devpath2)
{
 return _efi_devpath_match(devpath1, devpath2, 0);
}
