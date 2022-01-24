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
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  AcpiGbl_CmSingleStep ; 
 scalar_t__ AcpiGbl_DbThreadId ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC2 (
    ACPI_WALK_STATE         *WalkState)
{

#ifndef ACPI_APPLICATION
    if (AcpiGbl_DbThreadId != FUNC0 ())
    {
        return;
    }
#endif

    /*
     * Set the single-step flag. This will cause the debugger (if present)
     * to break to the console within the AML debugger at the start of the
     * next AML instruction.
     */
    AcpiGbl_CmSingleStep = TRUE;
    FUNC1 ("**break** Executed AML BreakPoint opcode\n");
}