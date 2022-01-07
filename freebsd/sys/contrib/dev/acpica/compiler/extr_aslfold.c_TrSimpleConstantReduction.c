
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * Child; } ;
struct TYPE_13__ {TYPE_4__* Parent; int AmlOpcode; } ;
struct TYPE_16__ {TYPE_2__ Asl; TYPE_1__ Common; } ;
struct TYPE_15__ {int ** CallerReturnDesc; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AML_INT_EVAL_SUBTREE_OP ;
 int ASL_PARSE_OUTPUT ;
 int ASL_WALK_VISIT_TWICE ;
 int AcpiDsResultPop (int **,TYPE_3__*) ;
 int AcpiFormatException (int ) ;
 int DbgPrint (int ,char*,...) ;
 int OpcAmlEvaluationWalk1 ;
 int OpcAmlEvaluationWalk2 ;
 int PARSEOP_INTEGER ;
 TYPE_4__* TrAllocateOp (int ) ;
 int TrInstallReducedConstant (TYPE_4__*,int *) ;
 int TrWalkParseTree (TYPE_4__*,int ,int ,int ,TYPE_3__*) ;
 int UtSetParseOpName (TYPE_4__*) ;

__attribute__((used)) static ACPI_STATUS
TrSimpleConstantReduction (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_PARSE_OBJECT *RootOp;
    ACPI_PARSE_OBJECT *OriginalParentOp;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_STATUS Status;


    DbgPrint (ASL_PARSE_OUTPUT,
        "Simple subtree constant reduction, operator to constant\n");



    RootOp = TrAllocateOp (PARSEOP_INTEGER);
    if (!RootOp)
    {
        return (AE_NO_MEMORY);
    }

    RootOp->Common.AmlOpcode = AML_INT_EVAL_SUBTREE_OP;

    OriginalParentOp = Op->Common.Parent;
    Op->Common.Parent = RootOp;



    WalkState->CallerReturnDesc = &ObjDesc;

    Status = TrWalkParseTree (Op, ASL_WALK_VISIT_TWICE,
        OpcAmlEvaluationWalk1, OpcAmlEvaluationWalk2, WalkState);



    Op->Common.Parent = OriginalParentOp;

    if (ACPI_FAILURE (Status))
    {
        DbgPrint (ASL_PARSE_OUTPUT,
            "Constant Subtree evaluation(1), %s\n",
            AcpiFormatException (Status));
        return (Status);
    }



    Status = AcpiDsResultPop (&ObjDesc, WalkState);
    if (ACPI_FAILURE (Status))
    {
        DbgPrint (ASL_PARSE_OUTPUT,
            "Constant Subtree evaluation(2), %s\n",
            AcpiFormatException (Status));
        return (Status);
    }



    Op->Asl.Child = ((void*)0);
    TrInstallReducedConstant (Op, ObjDesc);

    UtSetParseOpName (Op);
    return (AE_OK);
}
