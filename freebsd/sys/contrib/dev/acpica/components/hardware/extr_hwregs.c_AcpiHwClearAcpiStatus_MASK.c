#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  Address; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITMASK_ALL_FIXED_STATUS ; 
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiGbl_HardwareLock ; 
 TYPE_1__ AcpiGbl_XPm1aStatus ; 
 int /*<<< orphan*/  AcpiHwClearGpeBlock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HwClearAcpiStatus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC9 (
    void)
{
    ACPI_STATUS             Status;
    ACPI_CPU_FLAGS          LockFlags = 0;


    FUNC3 (HwClearAcpiStatus);


    FUNC0 ((ACPI_DB_IO, "About to write %04X to %8.8X%8.8X\n",
        ACPI_BITMASK_ALL_FIXED_STATUS,
        FUNC2 (AcpiGbl_XPm1aStatus.Address)));

    LockFlags = FUNC6 (AcpiGbl_HardwareLock);

    /* Clear the fixed events in PM1 A/B */

    Status = FUNC5 (ACPI_REGISTER_PM1_STATUS,
        ACPI_BITMASK_ALL_FIXED_STATUS);

    FUNC7 (AcpiGbl_HardwareLock, LockFlags);

    if (FUNC1 (Status))
    {
        goto Exit;
    }

    /* Clear the GPE Bits in all GPE registers in all GPE blocks */

    Status = FUNC4 (AcpiHwClearGpeBlock, NULL);

Exit:
    FUNC8 (Status);
}