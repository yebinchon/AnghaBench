
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ AmlOpcode; TYPE_6__* Next; int Aml; } ;
struct TYPE_19__ {TYPE_4__ Common; } ;
struct TYPE_14__ {int AmlStart; } ;
struct TYPE_18__ {scalar_t__ MethodBreakpoint; scalar_t__ UserBreakpoint; TYPE_3__* ControlState; TYPE_1__ ParserState; } ;
struct TYPE_15__ {scalar_t__ Value; } ;
struct TYPE_16__ {TYPE_2__ Common; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_LV_FUNCTIONS ;
 scalar_t__ ACPI_LV_PARSE ;
 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_UINT32_MAX ;
 int AE_ABORT_METHOD ;
 int AE_OK ;


 scalar_t__ AML_ELSE_OP ;
 scalar_t__ AML_IF_OP ;
 scalar_t__ AML_INT_METHODCALL_OP ;
 scalar_t__ AML_INT_NAMEDFIELD_OP ;
 scalar_t__ AML_WHILE_OP ;
 int AcpiDbGetDisplayOp (TYPE_5__*,TYPE_6__*) ;
 int AcpiDbStartCommand (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ AcpiDbgLevel ;
 int AcpiDmDisassemble (TYPE_5__*,int ,int ) ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 void* AcpiGbl_AbortMethod ;
 void* AcpiGbl_CmSingleStep ;
 scalar_t__ AcpiGbl_DbOutputToFile ;
 scalar_t__ AcpiGbl_DbThreadId ;
 void* AcpiGbl_StepToNextCall ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiPsGetOpcodeName (scalar_t__) ;
 void* FALSE ;
 void* TRUE ;

ACPI_STATUS
AcpiDbSingleStep (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op,
    UINT32 OpcodeClass)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_STATUS Status = AE_OK;
    UINT32 OriginalDebugLevel;
    UINT32 AmlOffset;


    ACPI_FUNCTION_ENTRY ();



    if (AcpiGbl_DbThreadId != AcpiOsGetThreadId ())
    {
        return (AE_OK);
    }




    if (AcpiGbl_AbortMethod)
    {
        AcpiGbl_AbortMethod = FALSE;
        return (AE_ABORT_METHOD);
    }

    AmlOffset = (UINT32) ACPI_PTR_DIFF (Op->Common.Aml,
        WalkState->ParserState.AmlStart);



    if (WalkState->MethodBreakpoint &&
       (WalkState->MethodBreakpoint <= AmlOffset))
    {



        AcpiOsPrintf ("***Break*** at AML offset %X\n", AmlOffset);
        AcpiGbl_CmSingleStep = TRUE;
        AcpiGbl_StepToNextCall = FALSE;
        WalkState->MethodBreakpoint = 0;
    }



    else if (WalkState->UserBreakpoint &&
            (WalkState->UserBreakpoint == AmlOffset))
    {
        AcpiOsPrintf ("***UserBreakpoint*** at AML offset %X\n",
            AmlOffset);
        AcpiGbl_CmSingleStep = TRUE;
        AcpiGbl_StepToNextCall = FALSE;
        WalkState->MethodBreakpoint = 0;
    }





    if (Op->Common.AmlOpcode == AML_INT_NAMEDFIELD_OP)
    {
        return (AE_OK);
    }

    switch (OpcodeClass)
    {
    case 128:
    case 129:

        return (AE_OK);

    default:


        break;
    }




    if ((AcpiGbl_DbOutputToFile) ||
        (AcpiGbl_CmSingleStep) ||
        (AcpiDbgLevel & ACPI_LV_PARSE))
    {
        if ((AcpiGbl_DbOutputToFile) ||
            (AcpiDbgLevel & ACPI_LV_PARSE))
        {
            AcpiOsPrintf ("\nAML Debug: Next AML Opcode to execute:\n");
        }






        OriginalDebugLevel = AcpiDbgLevel;
        AcpiDbgLevel &= ~(ACPI_LV_PARSE | ACPI_LV_FUNCTIONS);
        Next = Op->Common.Next;
        Op->Common.Next = ((void*)0);
        AcpiOsPrintf ("AML Opcode: %4.4X  %s\n", Op->Common.AmlOpcode,
            AcpiPsGetOpcodeName (Op->Common.AmlOpcode));


        if ((Op->Common.AmlOpcode == AML_IF_OP) ||
            (Op->Common.AmlOpcode == AML_WHILE_OP))
        {
            if (WalkState->ControlState->Common.Value)
            {
                AcpiOsPrintf ("Predicate = [True], IF block was executed\n");
            }
            else
            {
                AcpiOsPrintf ("Predicate = [False], Skipping IF block\n");
            }
        }
        else if (Op->Common.AmlOpcode == AML_ELSE_OP)
        {
            AcpiOsPrintf ("Predicate = [False], ELSE block was executed\n");
        }



        Op->Common.Next = Next;
        AcpiOsPrintf ("\n");
        if ((AcpiGbl_DbOutputToFile) ||
            (AcpiDbgLevel & ACPI_LV_PARSE))
        {
            AcpiOsPrintf ("\n");
        }
        AcpiDbgLevel = OriginalDebugLevel;
    }



    if (!AcpiGbl_CmSingleStep)
    {
        return (AE_OK);
    }





    if (AcpiGbl_StepToNextCall)
    {
        if (Op->Common.AmlOpcode != AML_INT_METHODCALL_OP)
        {


            return (AE_OK);
        }



        AcpiGbl_StepToNextCall = FALSE;
    }





    if (Op->Common.AmlOpcode == AML_INT_METHODCALL_OP)
    {


        AcpiGbl_CmSingleStep = FALSE;





        WalkState->MethodBreakpoint = 1;
    }


    AcpiExExitInterpreter ();
    Status = AcpiDbStartCommand (WalkState, Op);
    AcpiExEnterInterpreter ();



    return (Status);
}
