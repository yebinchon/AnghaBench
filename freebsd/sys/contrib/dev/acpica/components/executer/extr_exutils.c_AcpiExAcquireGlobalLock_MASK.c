#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int AML_FIELD_LOCK_RULE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockMutex ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ExAcquireGlobalLock ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5 (
    UINT32                  FieldFlags)
{
    ACPI_STATUS             Status;


    FUNC2 (ExAcquireGlobalLock);


    /* Only use the lock if the AlwaysLock bit is set */

    if (!(FieldFlags & AML_FIELD_LOCK_RULE_MASK))
    {
        return_VOID;
    }

    /* Attempt to get the global lock, wait forever */

    Status = FUNC3 (ACPI_WAIT_FOREVER,
        AcpiGbl_GlobalLockMutex, FUNC4 ());

    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Could not acquire Global Lock"));
    }

    return_VOID;
}