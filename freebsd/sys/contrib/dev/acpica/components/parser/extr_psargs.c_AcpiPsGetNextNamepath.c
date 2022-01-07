
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int UINT8 ;
struct TYPE_39__ {char* Name; } ;
struct TYPE_40__ {TYPE_8__ Value; TYPE_7__* Parent; TYPE_14__* Node; } ;
struct TYPE_37__ {scalar_t__ AmlOpcode; } ;
struct TYPE_38__ {TYPE_6__ Common; } ;
struct TYPE_35__ {scalar_t__ AmlOpcode; } ;
struct TYPE_36__ {TYPE_4__ Common; } ;
struct TYPE_34__ {int ParamCount; } ;
struct TYPE_33__ {int Ascii; } ;
struct TYPE_32__ {int * Aml; } ;
struct TYPE_31__ {scalar_t__ Type; TYPE_2__ Name; } ;
struct TYPE_30__ {TYPE_3__ Method; } ;
struct TYPE_29__ {TYPE_9__ Common; } ;
struct TYPE_28__ {int * Aml; } ;
struct TYPE_27__ {int ArgCount; int ParseFlags; int ScopeInfo; TYPE_5__* Op; TYPE_1__ ParserState; int ArgTypes; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_10__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_11__ ACPI_PARSE_STATE ;
typedef TYPE_12__ ACPI_PARSE_OBJECT ;
typedef TYPE_13__ ACPI_OPERAND_OBJECT ;
typedef TYPE_14__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,char*,scalar_t__) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODE_MASK ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 int ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_METHOD ;
 scalar_t__ AE_AML_INTERNAL ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_CONDITIONAL_REF_OF_OP ;
 int AML_INT_METHODCALL_OP ;
 int AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_PACKAGE_OP ;
 scalar_t__ AML_VARIABLE_PACKAGE_OP ;
 scalar_t__ ARGP_SUPERNAME ;
 scalar_t__ ARGP_TARGET ;
 scalar_t__ AcpiDsMethodError (scalar_t__,TYPE_10__*) ;
 TYPE_13__* AcpiNsGetAttachedObject (TYPE_14__*) ;
 scalar_t__ AcpiNsLookup (int ,char*,int ,int ,int,int *,TYPE_14__**) ;
 TYPE_12__* AcpiPsAllocOp (int ,int *) ;
 int AcpiPsAppendArg (TYPE_12__*,TYPE_12__*) ;
 char* AcpiPsGetNextNamestring (TYPE_11__*) ;
 int AcpiPsInitOp (TYPE_12__*,int ) ;
 scalar_t__ GET_CURRENT_ARG_TYPE (int ) ;
 int PsGetNextNamepath ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiPsGetNextNamepath (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_STATE *ParserState,
    ACPI_PARSE_OBJECT *Arg,
    BOOLEAN PossibleMethodCall)
{
    ACPI_STATUS Status;
    char *Path;
    ACPI_PARSE_OBJECT *NameOp;
    ACPI_OPERAND_OBJECT *MethodDesc;
    ACPI_NAMESPACE_NODE *Node;
    UINT8 *Start = ParserState->Aml;


    ACPI_FUNCTION_TRACE (PsGetNextNamepath);


    Path = AcpiPsGetNextNamestring (ParserState);
    AcpiPsInitOp (Arg, AML_INT_NAMEPATH_OP);



    if (!Path)
    {
        Arg->Common.Value.Name = Path;
        return_ACPI_STATUS (AE_OK);
    }
    Status = AcpiNsLookup (WalkState->ScopeInfo, Path,
        ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
        ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE, ((void*)0), &Node);





    if (ACPI_SUCCESS (Status) &&
        PossibleMethodCall &&
        (Node->Type == ACPI_TYPE_METHOD))
    {
        if ((GET_CURRENT_ARG_TYPE (WalkState->ArgTypes) == ARGP_SUPERNAME) ||
            (GET_CURRENT_ARG_TYPE (WalkState->ArgTypes) == ARGP_TARGET))
        {






            WalkState->ParserState.Aml = Start;
            WalkState->ArgCount = 1;
            AcpiPsInitOp (Arg, AML_INT_METHODCALL_OP);
        }



        MethodDesc = AcpiNsGetAttachedObject (Node);
        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "Control Method invocation %4.4s - %p Desc %p Path=%p\n",
            Node->Name.Ascii, Node, MethodDesc, Path));

        NameOp = AcpiPsAllocOp (AML_INT_NAMEPATH_OP, Start);
        if (!NameOp)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }



        AcpiPsInitOp (Arg, AML_INT_METHODCALL_OP);
        NameOp->Common.Value.Name = Path;



        NameOp->Common.Node = Node;
        AcpiPsAppendArg (Arg, NameOp);

        if (!MethodDesc)
        {
            ACPI_ERROR ((AE_INFO,
                "Control Method %p has no attached object",
                Node));
            return_ACPI_STATUS (AE_AML_INTERNAL);
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
            "Control Method - %p Args %X\n",
            Node, MethodDesc->Method.ParamCount));



        WalkState->ArgCount = MethodDesc->Method.ParamCount;
        return_ACPI_STATUS (AE_OK);
    }





    if (Status == AE_NOT_FOUND)
    {


        if ((WalkState->ParseFlags & ACPI_PARSE_MODE_MASK) !=
            ACPI_PARSE_EXECUTE)
        {
            Status = AE_OK;
        }



        else if (WalkState->Op->Common.AmlOpcode == AML_CONDITIONAL_REF_OF_OP)
        {
            Status = AE_OK;
        }






        else if ((Arg->Common.Parent) &&
            ((Arg->Common.Parent->Common.AmlOpcode == AML_PACKAGE_OP) ||
             (Arg->Common.Parent->Common.AmlOpcode == AML_VARIABLE_PACKAGE_OP)))
        {
            Status = AE_OK;
        }
    }



    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo, Path, Status);

        if ((WalkState->ParseFlags & ACPI_PARSE_MODE_MASK) ==
            ACPI_PARSE_EXECUTE)
        {


            Status = AcpiDsMethodError (Status, WalkState);
        }
    }



    Arg->Common.Value.Name = Path;
    return_ACPI_STATUS (Status);
}
