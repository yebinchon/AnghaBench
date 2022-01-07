
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int Integer; } ;
struct TYPE_28__ {int OwnerId; TYPE_1__ Name; } ;
struct TYPE_24__ {int AmlLength; int AmlStart; } ;
struct TYPE_27__ {TYPE_3__ Method; } ;
struct TYPE_23__ {TYPE_7__* Node; } ;
struct TYPE_26__ {TYPE_2__ Common; } ;
struct TYPE_25__ {int DescendingCallback; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef TYPE_7__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_7__*) ;
 int AE_NO_MEMORY ;
 int AML_METHOD_OP ;
 TYPE_4__* AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsDeleteWalkState (TYPE_4__*) ;
 int AcpiDsDetectNamedOpcodes ;
 int AcpiDsInitAmlWalk (TYPE_4__*,TYPE_5__*,TYPE_7__*,int ,int ,int *,int ) ;
 TYPE_5__* AcpiPsAllocOp (int ,int ) ;
 int AcpiPsDeleteParseTree (TYPE_5__*) ;
 int AcpiPsFreeOp (TYPE_5__*) ;
 int AcpiPsParseAml (TYPE_4__*) ;
 int AcpiPsSetName (TYPE_5__*,int ) ;
 int AcpiUtGetNodeName (TYPE_7__*) ;
 int DsAutoSerializeMethod ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsAutoSerializeMethod (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Op = ((void*)0);
    ACPI_WALK_STATE *WalkState;


    ACPI_FUNCTION_TRACE_PTR (DsAutoSerializeMethod, Node);


    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
        "Method auto-serialization parse [%4.4s] %p\n",
        AcpiUtGetNodeName (Node), Node));



    Op = AcpiPsAllocOp (AML_METHOD_OP, ObjDesc->Method.AmlStart);
    if (!Op)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    AcpiPsSetName (Op, Node->Name.Integer);
    Op->Common.Node = Node;



    WalkState = AcpiDsCreateWalkState (Node->OwnerId, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        AcpiPsFreeOp (Op);
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    Status = AcpiDsInitAmlWalk (WalkState, Op, Node,
        ObjDesc->Method.AmlStart, ObjDesc->Method.AmlLength, ((void*)0), 0);
    if (ACPI_FAILURE (Status))
    {
        AcpiDsDeleteWalkState (WalkState);
        AcpiPsFreeOp (Op);
        return_ACPI_STATUS (Status);
    }

    WalkState->DescendingCallback = AcpiDsDetectNamedOpcodes;



    Status = AcpiPsParseAml (WalkState);

    AcpiPsDeleteParseTree (Op);
    return_ACPI_STATUS (Status);
}
