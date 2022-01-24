#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_21__ {scalar_t__ Value; } ;
struct TYPE_20__ {scalar_t__ Value; } ;
struct TYPE_25__ {TYPE_3__ Integer; TYPE_2__ BankField; } ;
struct TYPE_19__ {TYPE_6__* Arg; } ;
struct TYPE_22__ {scalar_t__ AmlOpcode; TYPE_6__* Next; int /*<<< orphan*/ * Node; TYPE_1__ Value; } ;
struct TYPE_24__ {TYPE_4__ Common; } ;
struct TYPE_23__ {TYPE_7__** Operands; scalar_t__ OperandIndex; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_6__ ACPI_PARSE_OBJECT ;
typedef  TYPE_7__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 scalar_t__ AML_INT_NAMEDFIELD_OP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__**,TYPE_5__*) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  DsEvalBankFieldOperands ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     *OperandDesc;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_PARSE_OBJECT       *NextOp;
    ACPI_PARSE_OBJECT       *Arg;


    FUNC2 (DsEvalBankFieldOperands, Op);


    /*
     * This is where we evaluate the BankValue field of the
     * BankField declaration
     */

    /* NextOp points to the op that holds the Region */

    NextOp = Op->Common.Value.Arg;

    /* NextOp points to the op that holds the Bank Register */

    NextOp = NextOp->Common.Next;

    /* NextOp points to the op that holds the Bank Value */

    NextOp = NextOp->Common.Next;

    /*
     * Set proper index into operand stack for AcpiDsObjStackPush
     * invoked inside AcpiDsCreateOperand.
     *
     * We use WalkState->Operands[0] to store the evaluated BankValue
     */
    WalkState->OperandIndex = 0;

    Status = FUNC3 (WalkState, NextOp, 0);
    if (FUNC1 (Status))
    {
        FUNC9 (Status);
    }

    Status = FUNC4 (&WalkState->Operands[0], WalkState);
    if (FUNC1 (Status))
    {
        FUNC9 (Status);
    }

    FUNC0 (ACPI_WALK_OPERANDS,
        FUNC7 (Op->Common.AmlOpcode), 1);
    /*
     * Get the BankValue operand and save it
     * (at Top of stack)
     */
    OperandDesc = WalkState->Operands[0];

    /* Arg points to the start Bank Field */

    Arg = FUNC6 (Op, 4);
    while (Arg)
    {
        /* Ignore OFFSET and ACCESSAS terms here */

        if (Arg->Common.AmlOpcode == AML_INT_NAMEDFIELD_OP)
        {
            Node = Arg->Common.Node;

            ObjDesc = FUNC5 (Node);
            if (!ObjDesc)
            {
                FUNC9 (AE_NOT_EXIST);
            }

            ObjDesc->BankField.Value = (UINT32) OperandDesc->Integer.Value;
        }

        /* Move to next field in the list */

        Arg = Arg->Common.Next;
    }

    FUNC8 (OperandDesc);
    FUNC9 (Status);
}