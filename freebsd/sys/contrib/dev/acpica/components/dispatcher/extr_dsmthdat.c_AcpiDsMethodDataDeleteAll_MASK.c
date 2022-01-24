#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_5__ {scalar_t__ Object; } ;
struct TYPE_4__ {TYPE_2__* Arguments; TYPE_2__* LocalVariables; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_METHOD_NUM_ARGS ; 
 size_t ACPI_METHOD_NUM_LOCALS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  DsMethodDataDeleteAll ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC3 (
    ACPI_WALK_STATE         *WalkState)
{
    UINT32                  Index;


    FUNC1 (DsMethodDataDeleteAll);


    /* Detach the locals */

    for (Index = 0; Index < ACPI_METHOD_NUM_LOCALS; Index++)
    {
        if (WalkState->LocalVariables[Index].Object)
        {
            FUNC0 ((ACPI_DB_EXEC, "Deleting Local%u=%p\n",
                Index, WalkState->LocalVariables[Index].Object));

            /* Detach object (if present) and remove a reference */

            FUNC2 (&WalkState->LocalVariables[Index]);
        }
    }

    /* Detach the arguments */

    for (Index = 0; Index < ACPI_METHOD_NUM_ARGS; Index++)
    {
        if (WalkState->Arguments[Index].Object)
        {
            FUNC0 ((ACPI_DB_EXEC, "Deleting Arg%u=%p\n",
                Index, WalkState->Arguments[Index].Object));

            /* Detach object (if present) and remove a reference */

            FUNC2 (&WalkState->Arguments[Index]);
        }
    }

    return_VOID;
}