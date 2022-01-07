
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_24__ {scalar_t__ Type; } ;
struct TYPE_23__ {scalar_t__ Type; scalar_t__ ObjectType; } ;
struct TYPE_19__ {int String; scalar_t__ Integer; } ;
struct TYPE_20__ {scalar_t__ AmlOpcode; TYPE_1__ Value; int * Node; TYPE_4__* Next; } ;
struct TYPE_22__ {TYPE_2__ Common; } ;
struct TYPE_21__ {int ScopeInfo; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_OPCODE_INFO ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 scalar_t__ ACPI_MUL_8 (scalar_t__) ;
 int ACPI_NS_SEARCH_PARENT ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ AML_CREATE_BIT_FIELD_OP ;
 scalar_t__ AML_CREATE_FIELD_OP ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_TYPE_CREATE_FIELD ;
 TYPE_6__* AcpiDmGetResourceNode (TYPE_6__*,scalar_t__) ;
 int AcpiGetTagPathname (TYPE_4__*,TYPE_6__*,TYPE_6__*,scalar_t__) ;
 int AcpiNsLookup (int ,int ,scalar_t__,int ,int ,TYPE_3__*,TYPE_6__**) ;
 TYPE_4__* AcpiPsGetDepthNext (int *,TYPE_4__*) ;
 TYPE_5__* AcpiPsGetOpcodeInfo (scalar_t__) ;

void
AcpiDmCheckResourceReference (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *BufferNameOp;
    ACPI_PARSE_OBJECT *IndexOp;
    ACPI_NAMESPACE_NODE *BufferNode;
    ACPI_NAMESPACE_NODE *ResourceNode;
    const ACPI_OPCODE_INFO *OpInfo;
    UINT32 BitIndex;




    OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
    if (OpInfo->Type != AML_TYPE_CREATE_FIELD)
    {
        return;
    }



    BufferNameOp = AcpiPsGetDepthNext (((void*)0), Op);



    if (BufferNameOp->Common.AmlOpcode != AML_INT_NAMEPATH_OP)
    {
        return;
    }



    IndexOp = BufferNameOp->Common.Next;



    IndexOp->Common.Node = ((void*)0);

    OpInfo = AcpiPsGetOpcodeInfo (IndexOp->Common.AmlOpcode);
    if (OpInfo->ObjectType != ACPI_TYPE_INTEGER)
    {
        return;
    }



    if ((Op->Common.AmlOpcode == AML_CREATE_BIT_FIELD_OP) ||
        (Op->Common.AmlOpcode == AML_CREATE_FIELD_OP))
    {


        BitIndex = (UINT32) IndexOp->Common.Value.Integer;
    }
    else
    {


        BitIndex = (UINT32) ACPI_MUL_8 (IndexOp->Common.Value.Integer);
    }



    Status = AcpiNsLookup (WalkState->ScopeInfo,
        BufferNameOp->Common.Value.String, ACPI_TYPE_BUFFER,
        ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT, WalkState,
        &BufferNode);
    if (ACPI_FAILURE (Status))
    {
        return;
    }



    if (BufferNode->Type != ACPI_TYPE_BUFFER)
    {
        return;
    }



    ResourceNode = AcpiDmGetResourceNode (BufferNode, BitIndex);
    if (!ResourceNode)
    {
        return;
    }



    AcpiGetTagPathname (IndexOp, BufferNode, ResourceNode, BitIndex);
}
