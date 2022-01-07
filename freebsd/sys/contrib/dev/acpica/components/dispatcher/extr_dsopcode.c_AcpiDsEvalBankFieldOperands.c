
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_21__ {scalar_t__ Value; } ;
struct TYPE_20__ {scalar_t__ Value; } ;
struct TYPE_25__ {TYPE_3__ Integer; TYPE_2__ BankField; } ;
struct TYPE_19__ {TYPE_6__* Arg; } ;
struct TYPE_22__ {scalar_t__ AmlOpcode; TYPE_6__* Next; int * Node; TYPE_1__ Value; } ;
struct TYPE_24__ {TYPE_4__ Common; } ;
struct TYPE_23__ {TYPE_7__** Operands; scalar_t__ OperandIndex; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;
typedef TYPE_7__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DUMP_OPERANDS (int ,int ,int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_6__*) ;
 int ACPI_WALK_OPERANDS ;
 int AE_NOT_EXIST ;
 scalar_t__ AML_INT_NAMEDFIELD_OP ;
 int AcpiDsCreateOperand (TYPE_5__*,TYPE_6__*,int ) ;
 int AcpiExResolveToValue (TYPE_7__**,TYPE_5__*) ;
 TYPE_7__* AcpiNsGetAttachedObject (int *) ;
 TYPE_6__* AcpiPsGetArg (TYPE_6__*,int) ;
 int AcpiPsGetOpcodeName (scalar_t__) ;
 int AcpiUtRemoveReference (TYPE_7__*) ;
 int DsEvalBankFieldOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsEvalBankFieldOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *OperandDesc;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_PARSE_OBJECT *Arg;


    ACPI_FUNCTION_TRACE_PTR (DsEvalBankFieldOperands, Op);
    NextOp = Op->Common.Value.Arg;



    NextOp = NextOp->Common.Next;



    NextOp = NextOp->Common.Next;







    WalkState->OperandIndex = 0;

    Status = AcpiDsCreateOperand (WalkState, NextOp, 0);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiExResolveToValue (&WalkState->Operands[0], WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    ACPI_DUMP_OPERANDS (ACPI_WALK_OPERANDS,
        AcpiPsGetOpcodeName (Op->Common.AmlOpcode), 1);




    OperandDesc = WalkState->Operands[0];



    Arg = AcpiPsGetArg (Op, 4);
    while (Arg)
    {


        if (Arg->Common.AmlOpcode == AML_INT_NAMEDFIELD_OP)
        {
            Node = Arg->Common.Node;

            ObjDesc = AcpiNsGetAttachedObject (Node);
            if (!ObjDesc)
            {
                return_ACPI_STATUS (AE_NOT_EXIST);
            }

            ObjDesc->BankField.Value = (UINT32) OperandDesc->Integer.Value;
        }



        Arg = Arg->Common.Next;
    }

    AcpiUtRemoveReference (OperandDesc);
    return_ACPI_STATUS (Status);
}
