#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* InstallMultipleProtocolInterfaces ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * DriverBindingHandle; int /*<<< orphan*/  ImageHandle; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  TYPE_1__ EFI_DRIVER_BINDING ;

/* Variables and functions */
 TYPE_4__* BS ; 
 int /*<<< orphan*/  DriverBindingProtocolGUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

EFI_STATUS
FUNC4(EFI_DRIVER_BINDING *driver)
{
        EFI_STATUS status;

        driver->ImageHandle = IH;
        driver->DriverBindingHandle = NULL;
        status = BS->InstallMultipleProtocolInterfaces(
            &(driver->DriverBindingHandle),
            &DriverBindingProtocolGUID, driver,
            NULL);

        if (FUNC0(status)) {
                FUNC2("Failed to install driver (%ld)!\n",
                    FUNC1(status));
        }

        return (status);
}