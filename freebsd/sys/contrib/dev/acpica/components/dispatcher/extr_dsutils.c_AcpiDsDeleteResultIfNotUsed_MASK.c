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
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsDeleteResultIfNotUsed ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC6 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_OPERAND_OBJECT     *ResultObj,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_STATUS             Status;


    FUNC1 (DsDeleteResultIfNotUsed, ResultObj);


    if (!Op)
    {
        FUNC0 ((AE_INFO, "Null Op"));
        return_VOID;
    }

    if (!ResultObj)
    {
        return_VOID;
    }

    if (!FUNC3 (Op, WalkState))
    {
        /* Must pop the result stack (ObjDesc should be equal to ResultObj) */

        Status = FUNC4 (&ObjDesc, WalkState);
        if (FUNC2 (Status))
        {
            FUNC5 (ResultObj);
        }
    }

    return_VOID;
}