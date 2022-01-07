
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_14__ {int Flags; } ;
struct TYPE_11__ {scalar_t__ AmlOpcode; int CompileFlags; scalar_t__ ParseOpcode; int ParseOpName; TYPE_5__* Parent; int LogicalLineNumber; } ;
struct TYPE_9__ {scalar_t__ AmlOpcode; } ;
struct TYPE_13__ {TYPE_3__ Asl; TYPE_1__ Common; } ;
struct TYPE_12__ {scalar_t__ Opcode; TYPE_2__* OpInfo; TYPE_5__* Op; } ;
struct TYPE_10__ {int Flags; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_OPCODE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_RETURN_VALUE ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ AML_BUFFER_OP ;
 int AML_CONSTANT ;
 int AML_DEFER ;
 scalar_t__ AML_NAME_OP ;
 scalar_t__ AML_RAW_DATA_BYTE ;
 scalar_t__ AML_RAW_DATA_DWORD ;
 scalar_t__ AML_RAW_DATA_QWORD ;
 scalar_t__ AML_RAW_DATA_WORD ;
 int ASL_ERROR ;
 int ASL_MSG_CONSTANT_REQUIRED ;
 int ASL_MSG_INVALID_TARGET ;
 int ASL_MSG_UNSUPPORTED ;
 int ASL_PARSE_OUTPUT ;
 void* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int AslError (int ,int ,TYPE_5__*,char*) ;
 int DbgPrint (int ,char*,...) ;
 int OP_COULD_NOT_REDUCE ;
 int OP_IS_TARGET ;
 int OP_IS_TERM_ARG ;
 scalar_t__ PARSEOP_ZERO ;
 int TrPrintOpFlags (int,int ) ;

__attribute__((used)) static ACPI_STATUS
OpcAmlCheckForConstant (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = Context;
    ACPI_STATUS Status = AE_OK;
    ACPI_PARSE_OBJECT *NextOp;
    const ACPI_OPCODE_INFO *OpInfo;


    WalkState->Op = Op;
    WalkState->Opcode = Op->Common.AmlOpcode;
    WalkState->OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);

    DbgPrint (ASL_PARSE_OUTPUT, "[%.4d] Opcode: %12.12s ",
        Op->Asl.LogicalLineNumber, Op->Asl.ParseOpName);





    if ((WalkState->Opcode == AML_RAW_DATA_BYTE) ||
        (WalkState->Opcode == AML_RAW_DATA_WORD) ||
        (WalkState->Opcode == AML_RAW_DATA_DWORD) ||
        (WalkState->Opcode == AML_RAW_DATA_QWORD))
    {
        DbgPrint (ASL_PARSE_OUTPUT, "RAW DATA");
        Status = AE_TYPE;
        goto CleanupAndExit;
    }






    NextOp = Op->Asl.Parent;
    while (NextOp)
    {


        if (NextOp->Asl.AmlOpcode == AML_NAME_OP)
        {
            break;
        }
        OpInfo = AcpiPsGetOpcodeInfo (NextOp->Common.AmlOpcode);
        if (OpInfo->Flags & AML_DEFER)
        {
            NextOp = ((void*)0);
            break;
        }

        NextOp = NextOp->Asl.Parent;
    }



    if (!(WalkState->OpInfo->Flags & AML_CONSTANT))
    {
        if (NextOp)
        {


            if (Op->Asl.CompileFlags & OP_IS_TARGET)
            {
                AslError (ASL_ERROR, ASL_MSG_INVALID_TARGET, Op, ((void*)0));
                Status = AE_TYPE;
            }



            if (!(NextOp->Asl.CompileFlags & OP_COULD_NOT_REDUCE))
            {


                NextOp->Asl.CompileFlags |= OP_COULD_NOT_REDUCE;
                DbgPrint (ASL_PARSE_OUTPUT,
                    "**** Could not reduce operands for NAME opcode ****\n");

                AslError (ASL_ERROR, ASL_MSG_CONSTANT_REQUIRED, Op,
                    "Constant is required for Name operator");
                Status = AE_TYPE;
            }
        }

        if (ACPI_FAILURE (Status))
        {
            goto CleanupAndExit;
        }



        if (Op->Asl.CompileFlags & OP_IS_TARGET)
        {
            DbgPrint (ASL_PARSE_OUTPUT,
                "**** Valid Target, transform to Store or CopyObject ****\n");
            return (AE_CTRL_RETURN_VALUE);
        }



        DbgPrint (ASL_PARSE_OUTPUT,
            "**** Not a Type 3/4/5 opcode or cannot reduce/fold (%s) ****\n",
             Op->Asl.ParseOpName);

        Status = AE_TYPE;
        goto CleanupAndExit;
    }
    if (WalkState->Opcode == AML_BUFFER_OP)
    {
        DbgPrint (ASL_PARSE_OUTPUT,
            "\nBuffer constant reduction is currently not supported\n");

        if (NextOp)
        {
            AslError (ASL_ERROR, ASL_MSG_UNSUPPORTED, Op,
                "Buffer expression cannot be reduced");
        }

        Status = AE_TYPE;
        goto CleanupAndExit;
    }



    DbgPrint (ASL_PARSE_OUTPUT, "TYPE_345");

    if (Op->Asl.CompileFlags & OP_IS_TARGET)
    {
        if (Op->Asl.ParseOpcode == PARSEOP_ZERO)
        {
            DbgPrint (ASL_PARSE_OUTPUT, "%-16s", " NULL TARGET");
        }
        else
        {
            DbgPrint (ASL_PARSE_OUTPUT, "%-16s", " VALID TARGET");
        }
    }

    if (Op->Asl.CompileFlags & OP_IS_TERM_ARG)
    {
        DbgPrint (ASL_PARSE_OUTPUT, "%-16s", " TERMARG");
    }

CleanupAndExit:



    TrPrintOpFlags (Op->Asl.CompileFlags, ASL_PARSE_OUTPUT);
    DbgPrint (ASL_PARSE_OUTPUT, "\n");
    return (Status);
}
