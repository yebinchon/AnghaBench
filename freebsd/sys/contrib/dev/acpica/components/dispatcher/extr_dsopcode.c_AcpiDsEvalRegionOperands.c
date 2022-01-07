
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_22__ {int Ascii; } ;
struct TYPE_28__ {TYPE_3__ Name; } ;
struct TYPE_24__ {int Flags; scalar_t__ Length; scalar_t__ Address; int SpaceId; } ;
struct TYPE_23__ {scalar_t__ Value; } ;
struct TYPE_27__ {TYPE_5__ Region; TYPE_4__ Integer; } ;
struct TYPE_20__ {scalar_t__ Integer; TYPE_7__* Arg; } ;
struct TYPE_21__ {int AmlOpcode; TYPE_7__* Next; TYPE_1__ Value; TYPE_9__* Node; } ;
struct TYPE_26__ {TYPE_2__ Common; } ;
struct TYPE_25__ {int NumOperands; TYPE_8__** Operands; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;
typedef TYPE_9__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_ADR_SPACE_TYPE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_7__*) ;
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 int ACPI_WALK_OPERANDS ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsCreateOperands (TYPE_6__*,TYPE_7__*) ;
 int AcpiExResolveOperands (int ,int ,TYPE_6__*) ;
 TYPE_8__* AcpiNsGetAttachedObject (TYPE_9__*) ;
 int AcpiUtAddAddressRange (int ,scalar_t__,scalar_t__,TYPE_9__*) ;
 int AcpiUtRemoveReference (TYPE_8__*) ;
 int DsEvalRegionOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsEvalRegionOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *OperandDesc;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_ADR_SPACE_TYPE SpaceId;


    ACPI_FUNCTION_TRACE_PTR (DsEvalRegionOperands, Op);






    Node = Op->Common.Node;



    NextOp = Op->Common.Value.Arg;
    SpaceId = (ACPI_ADR_SPACE_TYPE) NextOp->Common.Value.Integer;



    NextOp = NextOp->Common.Next;



    Status = AcpiDsCreateOperands (WalkState, NextOp);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Status = AcpiExResolveOperands (
        Op->Common.AmlOpcode, ACPI_WALK_OPERANDS, WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }





    OperandDesc = WalkState->Operands[WalkState->NumOperands - 1];

    ObjDesc->Region.Length = (UINT32) OperandDesc->Integer.Value;
    AcpiUtRemoveReference (OperandDesc);



    if (!ObjDesc->Region.Length && (SpaceId < ACPI_NUM_PREDEFINED_REGIONS))
    {
        ACPI_WARNING ((AE_INFO,
            "Operation Region [%4.4s] has zero length (SpaceId %X)",
            Node->Name.Ascii, SpaceId));
    }





    OperandDesc = WalkState->Operands[WalkState->NumOperands - 2];

    ObjDesc->Region.Address = (ACPI_PHYSICAL_ADDRESS)
        OperandDesc->Integer.Value;
    AcpiUtRemoveReference (OperandDesc);

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
        ObjDesc, ACPI_FORMAT_UINT64 (ObjDesc->Region.Address),
        ObjDesc->Region.Length));

    Status = AcpiUtAddAddressRange (ObjDesc->Region.SpaceId,
        ObjDesc->Region.Address, ObjDesc->Region.Length, Node);



    ObjDesc->Region.Flags |= AOPOBJ_DATA_VALID;
    return_ACPI_STATUS (Status);
}
