#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  DescriptorType; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
struct TYPE_8__ {scalar_t__ ResultSize; int /*<<< orphan*/  Results; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_RESULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ; 
 scalar_t__ ACPI_RESULTS_OBJ_NUM_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_STACK_OVERFLOW ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  DsResultStackPush ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_GENERIC_STATE      *State;


    FUNC2 (DsResultStackPush);


    /* Check for stack overflow */

    if (((UINT32) WalkState->ResultSize + ACPI_RESULTS_FRAME_OBJ_NUM) >
        ACPI_RESULTS_OBJ_NUM_MAX)
    {
        FUNC1 ((AE_INFO, "Result stack overflow: State=%p Num=%u",
            WalkState, WalkState->ResultSize));
        return (AE_STACK_OVERFLOW);
    }

    State = FUNC3 ();
    if (!State)
    {
        return (AE_NO_MEMORY);
    }

    State->Common.DescriptorType = ACPI_DESC_TYPE_STATE_RESULT;
    FUNC4 (&WalkState->Results, State);

    /* Increase the length of the result stack by the length of frame */

    WalkState->ResultSize += ACPI_RESULTS_FRAME_OBJ_NUM;

    FUNC0 ((ACPI_DB_EXEC, "Results=%p State=%p\n",
        State, WalkState));

    return (AE_OK);
}