
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* InstallMultipleProtocolInterfaces ) (int **,int *,TYPE_1__*,int *) ;} ;
struct TYPE_5__ {int * DriverBindingHandle; int ImageHandle; } ;
typedef int EFI_STATUS ;
typedef TYPE_1__ EFI_DRIVER_BINDING ;


 TYPE_4__* BS ;
 int DriverBindingProtocolGUID ;
 scalar_t__ EFI_ERROR (int ) ;
 int EFI_ERROR_CODE (int ) ;
 int IH ;
 int printf (char*,int ) ;
 int stub1 (int **,int *,TYPE_1__*,int *) ;

EFI_STATUS
install_driver(EFI_DRIVER_BINDING *driver)
{
        EFI_STATUS status;

        driver->ImageHandle = IH;
        driver->DriverBindingHandle = ((void*)0);
        status = BS->InstallMultipleProtocolInterfaces(
            &(driver->DriverBindingHandle),
            &DriverBindingProtocolGUID, driver,
            ((void*)0));

        if (EFI_ERROR(status)) {
                printf("Failed to install driver (%ld)!\n",
                    EFI_ERROR_CODE(status));
        }

        return (status);
}
