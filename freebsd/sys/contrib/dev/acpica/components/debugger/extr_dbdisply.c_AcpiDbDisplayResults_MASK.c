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
typedef  int UINT32 ;
struct TYPE_6__ {TYPE_3__* Next; int /*<<< orphan*/ ** ObjDesc; } ;
struct TYPE_8__ {TYPE_1__ Results; } ;
struct TYPE_7__ {int ResultCount; TYPE_3__* Results; int /*<<< orphan*/ * MethodNode; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_3__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_CurrentWalkList ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (
    void)
{
    UINT32                  i;
    ACPI_WALK_STATE         *WalkState;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    UINT32                  ResultCount = 0;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_GENERIC_STATE      *Frame;
    UINT32                  Index; /* Index onto current frame */


    WalkState = FUNC1 (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        FUNC2 ("There is no method currently executing\n");
        return;
    }

    Node  = WalkState->MethodNode;

    if (WalkState->Results)
    {
        ResultCount = WalkState->ResultCount;
    }

    FUNC2 ("Method [%4.4s] has %X stacked result objects\n",
        FUNC3 (Node), ResultCount);

    /* From the top element of result stack */

    Frame = WalkState->Results;
    Index = (ResultCount - 1) % ACPI_RESULTS_FRAME_OBJ_NUM;

    for (i = 0; i < ResultCount; i++)
    {
        ObjDesc = Frame->Results.ObjDesc[Index];
        FUNC2 ("Result%u: ", i);
        FUNC0 (ObjDesc, WalkState);

        if (Index == 0)
        {
            Frame = Frame->Results.Next;
            Index = ACPI_RESULTS_FRAME_OBJ_NUM;
        }

        Index--;
    }
}