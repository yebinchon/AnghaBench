
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdinfo_t ;
struct TYPE_2__ {int (* LocateDevicePath ) (int *,int **,int *) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;


 TYPE_1__* BS ;
 scalar_t__ EFI_ERROR (int ) ;
 int blkio_guid ;
 int * efiblk_get_pdinfo_by_handle (int ) ;
 int stub1 (int *,int **,int *) ;

pdinfo_t *
efiblk_get_pdinfo_by_device_path(EFI_DEVICE_PATH *path)
{
 EFI_HANDLE h;
 EFI_STATUS status;
 EFI_DEVICE_PATH *devp = path;

 status = BS->LocateDevicePath(&blkio_guid, &devp, &h);
 if (EFI_ERROR(status))
  return (((void*)0));
 return (efiblk_get_pdinfo_by_handle(h));
}
