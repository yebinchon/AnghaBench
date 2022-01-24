#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * Child; } ;
struct TYPE_13__ {TYPE_4__* Parent; int /*<<< orphan*/  AmlOpcode; } ;
struct TYPE_16__ {TYPE_2__ Asl; TYPE_1__ Common; } ;
struct TYPE_15__ {int /*<<< orphan*/ ** CallerReturnDesc; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AML_INT_EVAL_SUBTREE_OP ; 
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_TWICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OpcAmlEvaluationWalk1 ; 
 int /*<<< orphan*/  OpcAmlEvaluationWalk2 ; 
 int /*<<< orphan*/  PARSEOP_INTEGER ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC8 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_PARSE_OBJECT       *RootOp;
    ACPI_PARSE_OBJECT       *OriginalParentOp;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_STATUS             Status;


    FUNC3 (ASL_PARSE_OUTPUT,
        "Simple subtree constant reduction, operator to constant\n");

    /* Allocate a new temporary root for this subtree */

    RootOp = FUNC4 (PARSEOP_INTEGER);
    if (!RootOp)
    {
        return (AE_NO_MEMORY);
    }

    RootOp->Common.AmlOpcode = AML_INT_EVAL_SUBTREE_OP;

    OriginalParentOp = Op->Common.Parent;
    Op->Common.Parent = RootOp;

    /* Hand off the subtree to the AML interpreter */

    WalkState->CallerReturnDesc = &ObjDesc;

    Status = FUNC6 (Op, ASL_WALK_VISIT_TWICE,
        OpcAmlEvaluationWalk1, OpcAmlEvaluationWalk2, WalkState);

    /* Restore original parse tree */

    Op->Common.Parent = OriginalParentOp;

    if (FUNC0 (Status))
    {
        FUNC3 (ASL_PARSE_OUTPUT,
            "Constant Subtree evaluation(1), %s\n",
            FUNC2 (Status));
        return (Status);
    }

    /* Get the final result */

    Status = FUNC1 (&ObjDesc, WalkState);
    if (FUNC0 (Status))
    {
        FUNC3 (ASL_PARSE_OUTPUT,
            "Constant Subtree evaluation(2), %s\n",
            FUNC2 (Status));
        return (Status);
    }

    /* Disconnect any existing children, install new constant */

    Op->Asl.Child = NULL;
    FUNC5 (Op, ObjDesc);

    FUNC7 (Op);
    return (AE_OK);
}