#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ImplicitReturnObj; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  AcpiGbl_EnableInterpreterSlack ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsDoImplicitReturn ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 

BOOLEAN
FUNC4 (
    ACPI_OPERAND_OBJECT     *ReturnDesc,
    ACPI_WALK_STATE         *WalkState,
    BOOLEAN                 AddReference)
{
    FUNC1 (DsDoImplicitReturn);


    /*
     * Slack must be enabled for this feature, and we must
     * have a valid return object
     */
    if ((!AcpiGbl_EnableInterpreterSlack) ||
        (!ReturnDesc))
    {
        return (FALSE);
    }

    FUNC0 (*(ACPI_DB_DISPATCH,
        "Result %p will be implicitly returned; Prev=%p\n",
        ReturnDesc,
        WalkState->ImplicitReturnObj));

    /*
     * Delete any "stale" implicit return value first. However, in
     * complex statements, the implicit return value can be
     * bubbled up several levels, so we don't clear the value if it
     * is the same as the ReturnDesc.
     */
    if (WalkState->ImplicitReturnObj)
    {
        if (WalkState->ImplicitReturnObj == ReturnDesc)
        {
            return (TRUE);
        }
        FUNC2 (WalkState);
    }

    /* Save the implicit return value, add a reference if requested */

    WalkState->ImplicitReturnObj = ReturnDesc;
    if (AddReference)
    {
        FUNC3 (ReturnDesc);
    }

    return (TRUE);
}