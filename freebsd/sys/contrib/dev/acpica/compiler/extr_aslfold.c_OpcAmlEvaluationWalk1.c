
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_11__ {int ParseOpName; scalar_t__ Child; } ;
struct TYPE_9__ {scalar_t__ Arg; } ;
struct TYPE_10__ {TYPE_1__ Value; int AmlOpcode; } ;
struct TYPE_13__ {TYPE_3__ Asl; TYPE_2__ Common; } ;
struct TYPE_12__ {int OpInfo; int Opcode; TYPE_5__* Op; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ASL_PARSE_OUTPUT ;
 int AcpiDsExecBeginOp (TYPE_4__*,TYPE_5__**) ;
 int AcpiFormatException (int ) ;
 int AcpiPsGetOpcodeInfo (int ) ;
 int DbgPrint (int ,char*,int ,int ) ;

__attribute__((used)) static ACPI_STATUS
OpcAmlEvaluationWalk1 (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = Context;
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *OutOp;


    WalkState->Op = Op;
    WalkState->Opcode = Op->Common.AmlOpcode;
    WalkState->OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);



    if (Op->Asl.Child)
    {
        Op->Common.Value.Arg = Op->Asl.Child;
    }



    Status = AcpiDsExecBeginOp (WalkState, &OutOp);
    if (ACPI_FAILURE (Status))
    {
        DbgPrint (ASL_PARSE_OUTPUT,
            "%s Constant interpretation failed (1) - %s\n",
            Op->Asl.ParseOpName, AcpiFormatException (Status));
    }

    return (Status);
}
