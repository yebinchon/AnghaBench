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
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiGbl_CmSingleStep ; 
 scalar_t__ AcpiGbl_DbThreadId ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{

#ifndef ACPI_APPLICATION
    if (AcpiGbl_DbThreadId != FUNC1())
    {
        return;
    }
#endif

    if (!AcpiGbl_CmSingleStep)
    {
        return;
    }

    FUNC2 ("ArgObj:    ");
    FUNC0 (ObjDesc, WalkState);
}