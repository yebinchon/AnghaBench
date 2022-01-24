#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ResultSize; int /*<<< orphan*/  ResultCount; int /*<<< orphan*/ * Results; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DsResultStackPop ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_GENERIC_STATE      *State;


    FUNC2 (DsResultStackPop);


    /* Check for stack underflow */

    if (WalkState->Results == NULL)
    {
        FUNC0 ((ACPI_DB_EXEC,
            "Result stack underflow - State=%p\n", WalkState));
        return (AE_AML_NO_OPERAND);
    }

    if (WalkState->ResultSize < ACPI_RESULTS_FRAME_OBJ_NUM)
    {
        FUNC1 ((AE_INFO, "Insufficient result stack size"));
        return (AE_AML_INTERNAL);
    }

    State = FUNC4 (&WalkState->Results);
    FUNC3 (State);

    /* Decrease the length of result stack by the length of frame */

    WalkState->ResultSize -= ACPI_RESULTS_FRAME_OBJ_NUM;

    FUNC0 ((ACPI_DB_EXEC,
        "Result=%p RemainingResults=%X State=%p\n",
        State, WalkState->ResultCount, WalkState));

    return (AE_OK);
}