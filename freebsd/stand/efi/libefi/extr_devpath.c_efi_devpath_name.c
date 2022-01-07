
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int (* LocateProtocol ) (int *,int *,int **) ;} ;
struct TYPE_3__ {int * (* ConvertDevicePathToText ) (int *,int ,int ) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_DEVICE_PATH ;
typedef int CHAR16 ;


 TYPE_2__* BS ;
 int DevicePathToTextGUID ;
 scalar_t__ EFI_ERROR (int ) ;
 int TRUE ;
 int * efi_devpath_to_name (int *) ;
 int stub1 (int *,int *,int **) ;
 int * stub2 (int *,int ,int ) ;
 TYPE_1__* toTextProtocol ;

CHAR16 *
efi_devpath_name(EFI_DEVICE_PATH *devpath)
{
 EFI_STATUS status;

 if (devpath == ((void*)0))
  return (((void*)0));
 if (toTextProtocol == ((void*)0)) {
  status = BS->LocateProtocol(&DevicePathToTextGUID, ((void*)0),
      (VOID **)&toTextProtocol);
  if (EFI_ERROR(status))
   toTextProtocol = ((void*)0);
 }
 if (toTextProtocol == ((void*)0))
  return (efi_devpath_to_name(devpath));

 return (toTextProtocol->ConvertDevicePathToText(devpath, TRUE, TRUE));
}
