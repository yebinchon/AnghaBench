
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* FreePool ) (int *) ;} ;
typedef int EFI_DEVICE_PATH ;


 TYPE_1__* BS ;
 int stub1 (int *) ;

void efi_devpath_free(EFI_DEVICE_PATH *devpath)
{

 BS->FreePool(devpath);
}
