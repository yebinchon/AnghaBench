
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_22__ {TYPE_5__* Op; int Length; scalar_t__ Value; } ;
struct TYPE_17__ {int BitLength; scalar_t__ BitOffset; } ;
struct TYPE_18__ {TYPE_1__ Tag; scalar_t__ Integer; } ;
struct TYPE_19__ {TYPE_6__* Node; TYPE_2__ Value; scalar_t__ ExternalName; scalar_t__ Namepath; scalar_t__ ParentMethod; } ;
struct TYPE_21__ {TYPE_3__ Asl; } ;
struct TYPE_20__ {int ScopeInfo; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_TYPE_LOCAL_RESOURCE ;
 int ACPI_TYPE_LOCAL_RESOURCE_FIELD ;
 scalar_t__ AE_ALREADY_EXISTS ;
 scalar_t__ AE_OK ;
 int ASL_ERROR ;
 TYPE_5__* ASL_GET_CHILD_NODE (TYPE_5__*) ;
 TYPE_5__* ASL_GET_PEER_NODE (TYPE_5__*) ;
 int ASL_MSG_FOUND_HERE ;
 int ASL_MSG_NAME_EXISTS ;
 scalar_t__ AcpiNsLookup (int ,scalar_t__,int ,int ,int,TYPE_4__*,TYPE_6__**) ;
 int AslDualParseOpError (int ,int ,TYPE_5__*,scalar_t__,int ,TYPE_5__*,scalar_t__) ;

__attribute__((used)) static ACPI_STATUS
LdLoadResourceElements (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_PARSE_OBJECT *InitializerOp = ((void*)0);
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;






    Status = AcpiNsLookup (WalkState->ScopeInfo, Op->Asl.Namepath,
        ACPI_TYPE_LOCAL_RESOURCE, ACPI_IMODE_LOAD_PASS1,
        ACPI_NS_NO_UPSEARCH | ACPI_NS_ERROR_IF_FOUND,
        WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_ALREADY_EXISTS)
        {


            AslDualParseOpError (ASL_ERROR, ASL_MSG_NAME_EXISTS,
                (ACPI_PARSE_OBJECT *) Op->Asl.ParentMethod,
                Op->Asl.Namepath, ASL_MSG_FOUND_HERE, Node->Op,
                Node->Op->Asl.ExternalName);
            return (AE_OK);
        }
        return (Status);
    }

    Node->Value = (UINT32) Op->Asl.Value.Integer;
    Node->Op = Op;
    Op->Asl.Node = Node;





    InitializerOp = ASL_GET_CHILD_NODE (Op);
    while (InitializerOp)
    {
        if (InitializerOp->Asl.ExternalName)
        {
            Status = AcpiNsLookup (WalkState->ScopeInfo,
                InitializerOp->Asl.ExternalName,
                ACPI_TYPE_LOCAL_RESOURCE_FIELD, ACPI_IMODE_LOAD_PASS1,
                ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE, ((void*)0), &Node);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }





            Node->Value = InitializerOp->Asl.Value.Tag.BitOffset;
            Node->Length = InitializerOp->Asl.Value.Tag.BitLength;
            InitializerOp->Asl.Node = Node;
            Node->Op = InitializerOp;
        }

        InitializerOp = ASL_GET_PEER_NODE (InitializerOp);
    }

    return (AE_OK);
}
