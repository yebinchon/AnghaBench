
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 scalar_t__ EFI_ERROR (int ) ;
 int ImageDevicePathGUID ;
 int OpenProtocolByHandle (int ,int *,void**) ;

EFI_DEVICE_PATH *
efi_lookup_image_devpath(EFI_HANDLE handle)
{
 EFI_DEVICE_PATH *devpath;
 EFI_STATUS status;

 status = OpenProtocolByHandle(handle, &ImageDevicePathGUID,
     (void **)&devpath);
 if (EFI_ERROR(status))
  devpath = ((void*)0);
 return (devpath);
}
