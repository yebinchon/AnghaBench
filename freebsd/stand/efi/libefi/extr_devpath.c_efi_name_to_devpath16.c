
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int (* LocateProtocol ) (int *,int *,int **) ;} ;
struct TYPE_3__ {int * (* ConvertTextToDevicePath ) (int *) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_DEVICE_PATH ;
typedef int CHAR16 ;


 TYPE_2__* BS ;
 int DevicePathFromTextGUID ;
 scalar_t__ EFI_ERROR (int ) ;
 TYPE_1__* fromTextProtocol ;
 int stub1 (int *,int *,int **) ;
 int * stub2 (int *) ;

EFI_DEVICE_PATH *
efi_name_to_devpath16(CHAR16 *path)
{
 EFI_STATUS status;

 if (path == ((void*)0))
  return (((void*)0));
 if (fromTextProtocol == ((void*)0)) {
  status = BS->LocateProtocol(&DevicePathFromTextGUID, ((void*)0),
      (VOID **)&fromTextProtocol);
  if (EFI_ERROR(status))
   fromTextProtocol = ((void*)0);
 }
 if (fromTextProtocol == ((void*)0))
  return (((void*)0));

 return (fromTextProtocol->ConvertTextToDevicePath(path));
}
