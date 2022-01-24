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
struct TYPE_3__ {struct TYPE_3__* Next; int /*<<< orphan*/ * MethodNode; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_CurrentWalkList ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (
    void)
{
    ACPI_WALK_STATE         *WalkState;
    ACPI_NAMESPACE_NODE     *Node;


    WalkState = FUNC0 (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        FUNC1 ("There is no method currently executing\n");
        return;
    }

    FUNC1 ("Current Control Method Call Tree\n");

    while (WalkState)
    {
        Node = WalkState->MethodNode;
        FUNC1 ("    [%4.4s]\n", FUNC2 (Node));

        WalkState = WalkState->Next;
    }
}