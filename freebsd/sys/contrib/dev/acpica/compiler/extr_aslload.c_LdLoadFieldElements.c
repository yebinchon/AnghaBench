
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_18__ {int Flags; TYPE_4__* Op; int Type; } ;
struct TYPE_14__ {int String; } ;
struct TYPE_15__ {int AmlOpcode; TYPE_4__* Next; TYPE_5__* Node; int ExternalName; TYPE_1__ Value; int CompileFlags; } ;
struct TYPE_17__ {TYPE_2__ Asl; } ;
struct TYPE_16__ {int ScopeInfo; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_FAILURE (scalar_t__) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 scalar_t__ AE_ALREADY_EXISTS ;
 scalar_t__ AE_BAD_PARAMETER ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;






 int ANOBJ_IS_EXTERNAL ;
 int ASL_ERROR ;
 int ASL_MSG_CORE_EXCEPTION ;
 int ASL_MSG_FOUND_HERE ;
 int ASL_MSG_NAME_EXISTS ;
 int ASL_WARNING ;
 scalar_t__ AcpiNsLookup (int ,int ,int ,int ,int,int *,TYPE_5__**) ;
 int AslDualParseOpError (int ,int ,TYPE_4__*,int ,int ,TYPE_4__*,int ) ;
 int AslError (int ,int ,TYPE_4__*,int ) ;
 int OP_NOT_FOUND_DURING_LOAD ;
 TYPE_4__* UtGetArg (TYPE_4__*,int) ;

__attribute__((used)) static ACPI_STATUS
LdLoadFieldElements (
    UINT32 AmlType,
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_PARSE_OBJECT *Child = ((void*)0);
    ACPI_PARSE_OBJECT *SourceRegion;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;


    SourceRegion = UtGetArg (Op, 0);
    if (SourceRegion)
    {
        Status = AcpiNsLookup (WalkState->ScopeInfo,
            SourceRegion->Asl.Value.String,
            AmlType, ACPI_IMODE_EXECUTE,
            ACPI_NS_DONT_OPEN_SCOPE, ((void*)0), &Node);
        if (Status == AE_NOT_FOUND)
        {




            SourceRegion->Asl.CompileFlags |= OP_NOT_FOUND_DURING_LOAD;
        }
    }



    switch (Op->Asl.AmlOpcode)
    {
    case 133:

        Child = UtGetArg (Op, 6);
        break;

    case 131:

        Child = UtGetArg (Op, 5);
        break;

    case 132:

        Child = UtGetArg (Op, 4);
        break;

    default:



        return (AE_BAD_PARAMETER);
    }



    while (Child)
    {
        switch (Child->Asl.AmlOpcode)
        {
        case 128:
        case 130:
        case 129:
            break;

        default:

            Status = AcpiNsLookup (WalkState->ScopeInfo,
                Child->Asl.Value.String,
                ACPI_TYPE_LOCAL_REGION_FIELD,
                ACPI_IMODE_LOAD_PASS1,
                ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE |
                    ACPI_NS_ERROR_IF_FOUND, ((void*)0), &Node);
            if (ACPI_FAILURE (Status))
            {
                if (Status != AE_ALREADY_EXISTS)
                {
                    AslError (ASL_ERROR, ASL_MSG_CORE_EXCEPTION, Child,
                        Child->Asl.Value.String);
                    return (Status);
                }
                else if (Status == AE_ALREADY_EXISTS &&
                    (Node->Flags & ANOBJ_IS_EXTERNAL))
                {
                    Node->Type = (UINT8) ACPI_TYPE_LOCAL_REGION_FIELD;
                    Node->Flags &= ~ANOBJ_IS_EXTERNAL;
                }
                else
                {




                    AslDualParseOpError (ASL_WARNING, ASL_MSG_NAME_EXISTS, Child,
                        Child->Asl.Value.String, ASL_MSG_FOUND_HERE, Node->Op,
                        Node->Op->Asl.ExternalName);
                }
            }
            else
            {
                Child->Asl.Node = Node;
                Node->Op = Child;
            }
            break;
        }

        Child = Child->Asl.Next;
    }

    return (AE_OK);
}
