#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_22__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_28__ {TYPE_3__ Name; } ;
struct TYPE_24__ {int /*<<< orphan*/  Flags; scalar_t__ Length; scalar_t__ Address; int /*<<< orphan*/  SpaceId; } ;
struct TYPE_23__ {scalar_t__ Value; } ;
struct TYPE_27__ {TYPE_5__ Region; TYPE_4__ Integer; } ;
struct TYPE_20__ {scalar_t__ Integer; TYPE_7__* Arg; } ;
struct TYPE_21__ {int /*<<< orphan*/  AmlOpcode; TYPE_7__* Next; TYPE_1__ Value; TYPE_9__* Node; } ;
struct TYPE_26__ {TYPE_2__ Common; } ;
struct TYPE_25__ {int NumOperands; TYPE_8__** Operands; } ;
typedef  TYPE_6__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_PHYSICAL_ADDRESS ;
typedef  TYPE_7__ ACPI_PARSE_OBJECT ;
typedef  TYPE_8__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_9__ ACPI_NAMESPACE_NODE ;
typedef  scalar_t__ ACPI_ADR_SPACE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_8__* FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  DsEvalRegionOperands ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC11 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     *OperandDesc;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_PARSE_OBJECT       *NextOp;
    ACPI_ADR_SPACE_TYPE     SpaceId;


    FUNC3 (DsEvalRegionOperands, Op);


    /*
     * This is where we evaluate the address and length fields of the
     * OpRegion declaration
     */
    Node = Op->Common.Node;

    /* NextOp points to the op that holds the SpaceID */

    NextOp = Op->Common.Value.Arg;
    SpaceId = (ACPI_ADR_SPACE_TYPE) NextOp->Common.Value.Integer;

    /* NextOp points to address op */

    NextOp = NextOp->Common.Next;

    /* Evaluate/create the address and length operands */

    Status = FUNC5 (WalkState, NextOp);
    if (FUNC1 (Status))
    {
        FUNC10 (Status);
    }

    /* Resolve the length and address operands to numbers */

    Status = FUNC6 (
        Op->Common.AmlOpcode, ACPI_WALK_OPERANDS, WalkState);
    if (FUNC1 (Status))
    {
        FUNC10 (Status);
    }

    ObjDesc = FUNC7 (Node);
    if (!ObjDesc)
    {
        FUNC10 (AE_NOT_EXIST);
    }

    /*
     * Get the length operand and save it
     * (at Top of stack)
     */
    OperandDesc = WalkState->Operands[WalkState->NumOperands - 1];

    ObjDesc->Region.Length = (UINT32) OperandDesc->Integer.Value;
    FUNC9 (OperandDesc);

    /* A zero-length operation region is unusable. Just warn */

    if (!ObjDesc->Region.Length && (SpaceId < ACPI_NUM_PREDEFINED_REGIONS))
    {
        FUNC4 ((AE_INFO,
            "Operation Region [%4.4s] has zero length (SpaceId %X)",
            Node->Name.Ascii, SpaceId));
    }

    /*
     * Get the address and save it
     * (at top of stack - 1)
     */
    OperandDesc = WalkState->Operands[WalkState->NumOperands - 2];

    ObjDesc->Region.Address = (ACPI_PHYSICAL_ADDRESS)
        OperandDesc->Integer.Value;
    FUNC9 (OperandDesc);

    FUNC0 ((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
        ObjDesc, FUNC2 (ObjDesc->Region.Address),
        ObjDesc->Region.Length));

    Status = FUNC8 (ObjDesc->Region.SpaceId,
        ObjDesc->Region.Address, ObjDesc->Region.Length, Node);

    /* Now the address and length are valid for this opregion */

    ObjDesc->Region.Flags |= AOPOBJ_DATA_VALID;
    FUNC10 (Status);
}