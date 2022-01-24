#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Value; } ;
struct TYPE_7__ {TYPE_4__* Next; } ;
struct TYPE_10__ {TYPE_2__ Common; TYPE_1__ Scope; } ;
struct TYPE_9__ {TYPE_4__* ScopeInfo; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  TYPE_4__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DsScopeStackClear ; 

void
FUNC4 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_GENERIC_STATE      *ScopeInfo;

    FUNC1 (DsScopeStackClear);


    while (WalkState->ScopeInfo)
    {
        /* Pop a scope off the stack */

        ScopeInfo = WalkState->ScopeInfo;
        WalkState->ScopeInfo = ScopeInfo->Scope.Next;

        FUNC0 ((ACPI_DB_EXEC,
            "Popped object type (%s)\n",
            FUNC3 (ScopeInfo->Common.Value)));

        FUNC2 (ScopeInfo);
    }
}