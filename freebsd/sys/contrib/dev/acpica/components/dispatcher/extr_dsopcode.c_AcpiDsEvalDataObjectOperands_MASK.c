#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_24__ {scalar_t__ Value; } ;
struct TYPE_30__ {TYPE_2__ Integer; } ;
struct TYPE_23__ {int /*<<< orphan*/  Arg; } ;
struct TYPE_27__ {int AmlOpcode; TYPE_4__* Parent; TYPE_1__ Value; } ;
struct TYPE_29__ {TYPE_5__ Common; } ;
struct TYPE_28__ {int OperandIndex; int NumOperands; TYPE_8__* ResultObj; TYPE_8__** Operands; int /*<<< orphan*/  Opcode; } ;
struct TYPE_25__ {int const AmlOpcode; } ;
struct TYPE_26__ {TYPE_3__ Common; } ;
typedef  TYPE_6__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_7__ ACPI_PARSE_OBJECT ;
typedef  TYPE_8__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_BUFFER_OP 130 
 scalar_t__ AML_NAME_OP ; 
#define  AML_PACKAGE_OP 129 
#define  AML_VARIABLE_PACKAGE_OP 128 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_7__*,scalar_t__,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_7__*,scalar_t__,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_8__**,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  DsEvalDataObjectOperands ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC11 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op,
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ArgDesc;
    UINT32                  Length;


    FUNC2 (DsEvalDataObjectOperands);


    /* The first operand (for all of these data objects) is the length */

    /*
     * Set proper index into operand stack for AcpiDsObjStackPush
     * invoked inside AcpiDsCreateOperand.
     */
    WalkState->OperandIndex = WalkState->NumOperands;

    /* Ignore if child is not valid */

    if (!Op->Common.Value.Arg)
    {
        FUNC0 ((AE_INFO,
            "Missing child while evaluating opcode %4.4X, Op %p",
            Op->Common.AmlOpcode, Op));
        FUNC10 (AE_OK);
    }

    Status = FUNC6 (WalkState, Op->Common.Value.Arg, 1);
    if (FUNC1 (Status))
    {
        FUNC10 (Status);
    }

    Status = FUNC8 (WalkState->Opcode,
        &(WalkState->Operands [WalkState->NumOperands -1]),
        WalkState);
    if (FUNC1 (Status))
    {
        FUNC10 (Status);
    }

    /* Extract length operand */

    ArgDesc = WalkState->Operands [WalkState->NumOperands - 1];
    Length = (UINT32) ArgDesc->Integer.Value;

    /* Cleanup for length operand */

    Status = FUNC7 (1, WalkState);
    if (FUNC1 (Status))
    {
        FUNC10 (Status);
    }

    FUNC9 (ArgDesc);

    /*
     * Create the actual data object
     */
    switch (Op->Common.AmlOpcode)
    {
    case AML_BUFFER_OP:

        Status = FUNC4 (
            WalkState, Op, Length, &ObjDesc);
        break;

    case AML_PACKAGE_OP:
    case AML_VARIABLE_PACKAGE_OP:

        Status = FUNC5 (
            WalkState, Op, Length, &ObjDesc);
        break;

    default:

        FUNC10 (AE_AML_BAD_OPCODE);
    }

    if (FUNC3 (Status))
    {
        /*
         * Return the object in the WalkState, unless the parent is a package -
         * in this case, the return object will be stored in the parse tree
         * for the package.
         */
        if ((!Op->Common.Parent) ||
            ((Op->Common.Parent->Common.AmlOpcode != AML_PACKAGE_OP) &&
             (Op->Common.Parent->Common.AmlOpcode != AML_VARIABLE_PACKAGE_OP) &&
             (Op->Common.Parent->Common.AmlOpcode != AML_NAME_OP)))
        {
            WalkState->ResultObj = ObjDesc;
        }
    }

    FUNC10 (Status);
}