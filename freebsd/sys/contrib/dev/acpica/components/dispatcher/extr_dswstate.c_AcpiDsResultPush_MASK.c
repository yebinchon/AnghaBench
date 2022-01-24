#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_6__ {int /*<<< orphan*/ ** ObjDesc; } ;
struct TYPE_8__ {TYPE_1__ Results; } ;
struct TYPE_7__ {scalar_t__ ResultCount; scalar_t__ ResultSize; int /*<<< orphan*/  CurrentResult; TYPE_3__* Results; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  TYPE_3__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsResultPush ; 

ACPI_STATUS
FUNC6 (
    ACPI_OPERAND_OBJECT     *Object,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_GENERIC_STATE      *State;
    ACPI_STATUS             Status;
    UINT32                  Index;


    FUNC3 (DsResultPush);


    if (WalkState->ResultCount > WalkState->ResultSize)
    {
        FUNC1 ((AE_INFO, "Result stack is full"));
        return (AE_AML_INTERNAL);
    }
    else if (WalkState->ResultCount == WalkState->ResultSize)
    {
        /* Extend the result stack */

        Status = FUNC4 (WalkState);
        if (FUNC2 (Status))
        {
            FUNC1 ((AE_INFO, "Failed to extend the result stack"));
            return (Status);
        }
    }

    if (!(WalkState->ResultCount < WalkState->ResultSize))
    {
        FUNC1 ((AE_INFO, "No free elements in result stack"));
        return (AE_AML_INTERNAL);
    }

    State = WalkState->Results;
    if (!State)
    {
        FUNC1 ((AE_INFO, "No result stack frame during push"));
        return (AE_AML_INTERNAL);
    }

    if (!Object)
    {
        FUNC1 ((AE_INFO,
            "Null Object! Obj=%p State=%p Num=%u",
            Object, WalkState, WalkState->ResultCount));
        return (AE_BAD_PARAMETER);
    }

    /* Assign the address of object to the top free element of result stack */

    Index = (UINT32) WalkState->ResultCount % ACPI_RESULTS_FRAME_OBJ_NUM;
    State->Results.ObjDesc [Index] = Object;
    WalkState->ResultCount++;

    FUNC0 ((ACPI_DB_EXEC, "Obj=%p [%s] State=%p Num=%X Cur=%X\n",
        Object, FUNC5 ((ACPI_OPERAND_OBJECT *) Object),
        WalkState, WalkState->ResultCount, WalkState->CurrentResult));

    return (AE_OK);
}