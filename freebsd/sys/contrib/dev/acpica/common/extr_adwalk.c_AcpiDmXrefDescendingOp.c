
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_35__ {char* String; TYPE_11__* Arg; } ;
struct TYPE_41__ {scalar_t__ AmlOpcode; TYPE_15__* Node; TYPE_3__ Value; } ;
struct TYPE_40__ {int ParamCount; } ;
struct TYPE_39__ {scalar_t__ Type; } ;
struct TYPE_34__ {char* String; } ;
struct TYPE_38__ {TYPE_5__* Parent; TYPE_2__ Value; int AmlOpcode; } ;
struct TYPE_36__ {scalar_t__ AmlOpcode; } ;
struct TYPE_37__ {TYPE_4__ Asl; } ;
struct TYPE_33__ {char* Path; } ;
struct TYPE_32__ {int Flags; scalar_t__ OwnerId; } ;
struct TYPE_31__ {int Flags; } ;
struct TYPE_30__ {TYPE_8__ Method; TYPE_7__ Common; } ;
struct TYPE_29__ {TYPE_10__* WalkState; } ;
struct TYPE_28__ {TYPE_9__ Common; TYPE_6__ Asl; TYPE_1__ Named; } ;
struct TYPE_27__ {scalar_t__ OwnerId; int ScopeInfo; } ;
typedef TYPE_10__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_11__ ACPI_PARSE_OBJECT ;
typedef TYPE_12__ ACPI_OP_WALK_INFO ;
typedef TYPE_13__ ACPI_OPERAND_OBJECT ;
typedef TYPE_14__ ACPI_OPCODE_INFO ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef TYPE_15__ ACPI_NAMESPACE_NODE ;


 int ACPI_EXT_RESOLVED_REFERENCE ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FREE (char*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_SEARCH_PARENT ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_METHOD ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_ALIAS_OP ;
 scalar_t__ AML_CONDITIONAL_REF_OF_OP ;
 int AML_CREATE ;
 scalar_t__ AML_EXTERNAL_OP ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 int AML_NAMED ;
 scalar_t__ AML_NOTIFY_OP ;
 scalar_t__ AML_SCOPE_OP ;
 int ANOBJ_IS_EXTERNAL ;
 int AcpiDmAddNodeToExternalList (TYPE_15__*,int ,int,int ) ;
 int AcpiDmAddOpToExternalList (TYPE_11__*,char*,int ,int,int ) ;
 scalar_t__ AcpiDsScopeStackPush (TYPE_15__*,scalar_t__,TYPE_10__*) ;
 TYPE_13__* AcpiNsGetAttachedObject (TYPE_15__*) ;
 char* AcpiNsGetExternalPathname (TYPE_15__*) ;
 scalar_t__ AcpiNsLookup (int ,char*,scalar_t__,int ,int,TYPE_10__*,TYPE_15__**) ;
 scalar_t__ AcpiNsOpensScope (scalar_t__) ;
 TYPE_14__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 scalar_t__ AslMapNamedOpcodeToDataType (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmXrefDescendingOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_OP_WALK_INFO *Info = Context;
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_WALK_STATE *WalkState;
    ACPI_OBJECT_TYPE ObjectType;
    ACPI_OBJECT_TYPE ObjectType2;
    ACPI_STATUS Status;
    char *Path = ((void*)0);
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OPERAND_OBJECT *Object;
    UINT32 ParamCount = 0;
    char *Pathname;
    UINT16 Flags = 0;


    WalkState = Info->WalkState;
    OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
    ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);

    if ((!(OpInfo->Flags & AML_NAMED)) &&
        (!(OpInfo->Flags & AML_CREATE)) &&
        (Op->Common.AmlOpcode != AML_INT_NAMEPATH_OP) &&
        (Op->Common.AmlOpcode != AML_NOTIFY_OP))
    {
        goto Exit;
    }



    if (OpInfo->Flags & AML_NAMED)
    {




        if (Op->Common.AmlOpcode == AML_ALIAS_OP)
        {
            ObjectType = ACPI_TYPE_ANY;

            NextOp = Op->Common.Value.Arg;
            NextOp = NextOp->Common.Value.Arg;
            if (NextOp->Common.AmlOpcode == AML_INT_NAMEPATH_OP)
            {
                Path = NextOp->Common.Value.String;
            }
        }
        else if (Op->Common.AmlOpcode == AML_SCOPE_OP ||
                 Op->Common.AmlOpcode == AML_EXTERNAL_OP)
        {
            Path = Op->Named.Path;
        }
    }
    else if (OpInfo->Flags & AML_CREATE)
    {


        ObjectType = ACPI_TYPE_BUFFER;

        NextOp = Op->Common.Value.Arg;
        if (NextOp->Common.AmlOpcode == AML_INT_NAMEPATH_OP)
        {
            Path = NextOp->Common.Value.String;
        }
    }
    else if (Op->Common.AmlOpcode == AML_NOTIFY_OP)
    {
        Path = Op->Common.Value.Arg->Asl.Value.String;
    }
    else
    {
        Path = Op->Common.Value.String;
    }

    if (!Path)
    {
        goto Exit;
    }
    Node = ((void*)0);
    Status = AcpiNsLookup (WalkState->ScopeInfo, Path, ACPI_TYPE_ANY,
        ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
        WalkState, &Node);

    if (ACPI_SUCCESS (Status) && (Node->Flags & ANOBJ_IS_EXTERNAL))
    {


        Status = AE_NOT_FOUND;
    }

    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_NOT_FOUND)
        {







            if (!(Op->Asl.Parent &&
                (Op->Asl.Parent->Asl.AmlOpcode == AML_CONDITIONAL_REF_OF_OP)))
            {
                if (Node)
                {
                    AcpiDmAddNodeToExternalList (Node,
                        (UINT8) ObjectType, 7, Flags);
                }
                else
                {
                    AcpiDmAddOpToExternalList (Op, Path,
                        (UINT8) ObjectType, 7, Flags);
                }
            }
        }
    }







    else if (Node->OwnerId &&
            (WalkState->OwnerId != Node->OwnerId))
    {
        ObjectType2 = ObjectType;

        Object = AcpiNsGetAttachedObject (Node);
        if (Object)
        {
            ObjectType2 = Object->Common.Type;
            if (ObjectType2 == ACPI_TYPE_METHOD)
            {
                ParamCount = Object->Method.ParamCount;
            }
        }

        Pathname = AcpiNsGetExternalPathname (Node);
        if (!Pathname)
        {
            return (AE_NO_MEMORY);
        }

        AcpiDmAddNodeToExternalList (Node, (UINT8) ObjectType2,
            ParamCount, ACPI_EXT_RESOLVED_REFERENCE);

        ACPI_FREE (Pathname);
        Op->Common.Node = Node;
    }
    else
    {
        Op->Common.Node = Node;
    }


Exit:


    if (AcpiNsOpensScope (ObjectType))
    {
        if (Op->Common.Node)
        {
            Status = AcpiDsScopeStackPush (Op->Common.Node, ObjectType,
                WalkState);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }
    }

    return (AE_OK);
}
