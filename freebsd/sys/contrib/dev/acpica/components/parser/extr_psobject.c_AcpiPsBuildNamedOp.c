
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_21__ {scalar_t__ Length; int * Data; int Aml; } ;
struct TYPE_19__ {TYPE_5__* Arg; } ;
struct TYPE_20__ {scalar_t__ AmlOpcode; int * EndBlkComment; int * CommentList; int * NameComment; int * CloseBraceComment; int * EndNodeComment; int * InlineComment; int Aml; int CvParentFilename; int CvFilename; TYPE_1__ Value; scalar_t__ ArgListLength; } ;
struct TYPE_23__ {TYPE_3__ Named; TYPE_2__ Common; } ;
struct TYPE_22__ {scalar_t__ Opcode; scalar_t__ (* DescendingCallback ) (TYPE_4__*,TYPE_5__**) ;int * Op; int ArgTypes; int ParserState; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 scalar_t__ AE_AML_NO_OPERAND ;
 scalar_t__ AE_CTRL_PARSE_CONTINUE ;
 scalar_t__ AE_CTRL_PARSE_PENDING ;
 scalar_t__ AE_CTRL_PENDING ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AML_DATA_REGION_OP ;
 scalar_t__ AML_REGION_OP ;
 scalar_t__ ARGP_NAME ;
 int ASL_CV_CAPTURE_COMMENTS (TYPE_4__*) ;
 int * AcpiGbl_CurrentInlineComment ;
 int AcpiPsAppendArg (TYPE_5__*,TYPE_5__*) ;
 scalar_t__ AcpiPsGetNextArg (TYPE_4__*,int *,scalar_t__,TYPE_5__**) ;
 scalar_t__ AcpiPsNextParseState (TYPE_4__*,TYPE_5__*,scalar_t__) ;
 scalar_t__ GET_CURRENT_ARG_TYPE (int ) ;
 int INCREMENT_ARG_LIST (int ) ;
 int PsBuildNamedOp ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_5__**) ;

ACPI_STATUS
AcpiPsBuildNamedOp (
    ACPI_WALK_STATE *WalkState,
    UINT8 *AmlOpStart,
    ACPI_PARSE_OBJECT *UnnamedOp,
    ACPI_PARSE_OBJECT **Op)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PARSE_OBJECT *Arg = ((void*)0);


    ACPI_FUNCTION_TRACE_PTR (PsBuildNamedOp, WalkState);


    UnnamedOp->Common.Value.Arg = ((void*)0);
    UnnamedOp->Common.ArgListLength = 0;
    UnnamedOp->Common.AmlOpcode = WalkState->Opcode;





    while (GET_CURRENT_ARG_TYPE (WalkState->ArgTypes) &&
          (GET_CURRENT_ARG_TYPE (WalkState->ArgTypes) != ARGP_NAME))
    {
        ASL_CV_CAPTURE_COMMENTS (WalkState);
        Status = AcpiPsGetNextArg (WalkState, &(WalkState->ParserState),
            GET_CURRENT_ARG_TYPE (WalkState->ArgTypes), &Arg);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        AcpiPsAppendArg (UnnamedOp, Arg);
        INCREMENT_ARG_LIST (WalkState->ArgTypes);
    }



    ASL_CV_CAPTURE_COMMENTS (WalkState);
    if (!GET_CURRENT_ARG_TYPE (WalkState->ArgTypes))
    {
        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }



    INCREMENT_ARG_LIST (WalkState->ArgTypes);





    WalkState->Op = ((void*)0);

    Status = WalkState->DescendingCallback (WalkState, Op);
    if (ACPI_FAILURE (Status))
    {
        if (Status != AE_CTRL_TERMINATE)
        {
            ACPI_EXCEPTION ((AE_INFO, Status, "During name lookup/catalog"));
        }
        return_ACPI_STATUS (Status);
    }

    if (!*Op)
    {
        return_ACPI_STATUS (AE_CTRL_PARSE_CONTINUE);
    }

    Status = AcpiPsNextParseState (WalkState, *Op, Status);
    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_CTRL_PENDING)
        {
            Status = AE_CTRL_PARSE_PENDING;
        }
        return_ACPI_STATUS (Status);
    }

    AcpiPsAppendArg (*Op, UnnamedOp->Common.Value.Arg);
    if ((*Op)->Common.AmlOpcode == AML_REGION_OP ||
        (*Op)->Common.AmlOpcode == AML_DATA_REGION_OP)
    {
        (*Op)->Named.Data = AmlOpStart;
        (*Op)->Named.Length = 0;
    }

    return_ACPI_STATUS (AE_OK);
}
