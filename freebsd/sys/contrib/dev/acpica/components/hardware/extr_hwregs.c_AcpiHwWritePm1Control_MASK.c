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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {scalar_t__ Address; } ;
struct TYPE_4__ {TYPE_1__ XPm1bControlBlock; TYPE_1__ XPm1aControlBlock; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HwWritePm1Control ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC4 (
    UINT32                  Pm1aControl,
    UINT32                  Pm1bControl)
{
    ACPI_STATUS             Status;


    FUNC1 (HwWritePm1Control);


    Status = FUNC2 (Pm1aControl, &AcpiGbl_FADT.XPm1aControlBlock);
    if (FUNC0 (Status))
    {
        FUNC3 (Status);
    }

    if (AcpiGbl_FADT.XPm1bControlBlock.Address)
    {
        Status = FUNC2 (Pm1bControl, &AcpiGbl_FADT.XPm1bControlBlock);
    }
    FUNC3 (Status);
}