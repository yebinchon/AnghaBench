
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* LocateDevicePath ) (int *,int **,int **) ;} ;
typedef int EFI_STATUS ;
typedef int * EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 TYPE_1__* BS ;
 int DevicePathGUID ;
 scalar_t__ EFI_ERROR (int ) ;
 int stub1 (int *,int **,int **) ;

EFI_HANDLE
efi_devpath_handle(EFI_DEVICE_PATH *devpath)
{
 EFI_STATUS status;
 EFI_HANDLE h;







 status = BS->LocateDevicePath(&DevicePathGUID, &devpath, &h);
 if (EFI_ERROR(status))
  return (((void*)0));
 return (h);
}
