#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  OsMutex; } ;
struct TYPE_4__ {TYPE_1__ Mutex; } ;
typedef  void* BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_GLOBAL_LOCK_RELEASE ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ENABLE_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_ACQUIRED ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiGbl_FACS ; 
 void* AcpiGbl_GlobalLockAcquired ; 
 TYPE_2__* AcpiGbl_GlobalLockMutex ; 
 scalar_t__ AcpiGbl_GlobalLockPresent ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvReleaseGlobalLock ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    void)
{
    BOOLEAN                 Pending = FALSE;
    ACPI_STATUS             Status = AE_OK;


    FUNC1 (EvReleaseGlobalLock);


    /* Lock must be already acquired */

    if (!AcpiGbl_GlobalLockAcquired)
    {
        FUNC3 ((AE_INFO,
            "Cannot release the ACPI Global Lock, it has not been acquired"));
        FUNC6 (AE_NOT_ACQUIRED);
    }

    if (AcpiGbl_GlobalLockPresent)
    {
        /* Allow any thread to release the lock */

        FUNC2 (AcpiGbl_FACS, Pending);

        /*
         * If the pending bit was set, we must write GBL_RLS to the control
         * register
         */
        if (Pending)
        {
            Status = FUNC5 (
                ACPI_BITREG_GLOBAL_LOCK_RELEASE, ACPI_ENABLE_EVENT);
        }

        FUNC0 ((ACPI_DB_EXEC, "Released hardware Global Lock\n"));
    }

    AcpiGbl_GlobalLockAcquired = FALSE;

    /* Release the local GL mutex */

    FUNC4 (AcpiGbl_GlobalLockMutex->Mutex.OsMutex);
    FUNC6 (Status);
}