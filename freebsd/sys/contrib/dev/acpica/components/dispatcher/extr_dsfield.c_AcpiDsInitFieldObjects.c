
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_12__ {scalar_t__ AmlOpcode; TYPE_4__* Next; int * Node; } ;
struct TYPE_11__ {int Name; } ;
struct TYPE_14__ {TYPE_2__ Common; TYPE_1__ Named; } ;
struct TYPE_13__ {int ParseFlags; int Opcode; int ScopeInfo; scalar_t__ MethodNode; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,char*,scalar_t__) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_OVERRIDE_IF_FOUND ;
 int ACPI_NS_TEMPORARY ;
 int ACPI_PARSE_DEFERRED_OP ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_LOCAL_BANK_FIELD ;
 int ACPI_TYPE_LOCAL_INDEX_FIELD ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 scalar_t__ AE_ALREADY_EXISTS ;
 scalar_t__ AE_AML_INTERNAL ;
 scalar_t__ AE_BAD_PARAMETER ;
 int AE_INFO ;
 scalar_t__ AE_OK ;



 scalar_t__ AML_INT_NAMEDFIELD_OP ;
 scalar_t__ AcpiNsLookup (int ,char*,int ,int ,int,TYPE_3__*,int **) ;
 TYPE_4__* AcpiPsGetArg (TYPE_4__*,int) ;
 int DsInitFieldObjects ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiDsInitFieldObjects (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Arg = ((void*)0);
    ACPI_NAMESPACE_NODE *Node;
    UINT8 Type = 0;
    UINT32 Flags;


    ACPI_FUNCTION_TRACE_PTR (DsInitFieldObjects, Op);




    if (!(WalkState->ParseFlags & ACPI_PARSE_EXECUTE))
    {
        if (WalkState->ParseFlags & ACPI_PARSE_DEFERRED_OP)
        {


            return_ACPI_STATUS (AE_OK);
        }

        ACPI_ERROR ((AE_INFO,
            "Parse deferred mode is not set"));
        return_ACPI_STATUS (AE_AML_INTERNAL);
    }





    switch (WalkState->Opcode)
    {
    case 129:

        Arg = AcpiPsGetArg (Op, 2);
        Type = ACPI_TYPE_LOCAL_REGION_FIELD;
        break;

    case 130:

        Arg = AcpiPsGetArg (Op, 4);
        Type = ACPI_TYPE_LOCAL_BANK_FIELD;
        break;

    case 128:

        Arg = AcpiPsGetArg (Op, 3);
        Type = ACPI_TYPE_LOCAL_INDEX_FIELD;
        break;

    default:

        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Flags = ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE |
        ACPI_NS_ERROR_IF_FOUND;





    if (WalkState->MethodNode &&
        !(WalkState->ParseFlags & ACPI_PARSE_MODULE_LEVEL))
    {
        Flags |= ACPI_NS_TEMPORARY;
    }
    while (Arg)
    {




        if (Arg->Common.AmlOpcode == AML_INT_NAMEDFIELD_OP)
        {
            Status = AcpiNsLookup (WalkState->ScopeInfo,
                (char *) &Arg->Named.Name, Type, ACPI_IMODE_LOAD_PASS1,
                Flags, WalkState, &Node);
            if (ACPI_FAILURE (Status))
            {
                ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo,
                    (char *) &Arg->Named.Name, Status);
                if (Status != AE_ALREADY_EXISTS)
                {
                    return_ACPI_STATUS (Status);
                }


            }

            Arg->Common.Node = Node;
        }



        Arg = Arg->Common.Next;
    }

    return_ACPI_STATUS (AE_OK);
}
