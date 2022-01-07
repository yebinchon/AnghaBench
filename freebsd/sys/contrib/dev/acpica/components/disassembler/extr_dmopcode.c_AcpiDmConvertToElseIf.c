
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


struct TYPE_12__ {TYPE_6__* Arg; } ;
struct TYPE_13__ {scalar_t__ AmlOpcode; scalar_t__ DisasmOpcode; TYPE_6__* Next; int DisasmFlags; TYPE_4__ Value; int Parent; } ;
struct TYPE_11__ {TYPE_2__* Next; } ;
struct TYPE_14__ {TYPE_5__ Common; TYPE_3__ Asl; } ;
struct TYPE_9__ {scalar_t__ AmlOpcode; } ;
struct TYPE_10__ {TYPE_1__ Common; } ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_DASM_CASE ;
 scalar_t__ ACPI_DASM_DEFAULT ;
 scalar_t__ ACPI_DASM_LNOT_PREFIX ;
 int ACPI_PARSEOP_ELSEIF ;
 int ACPI_PARSEOP_IGNORE ;
 scalar_t__ AML_ELSE_OP ;
 scalar_t__ AML_IF_OP ;
 int AcpiDmPromoteSubtree (TYPE_6__*) ;
 int AcpiOsPrintf (char*,char*) ;

__attribute__((used)) static void
AcpiDmConvertToElseIf (
    ACPI_PARSE_OBJECT *OriginalElseOp)
{
    ACPI_PARSE_OBJECT *IfOp;
    ACPI_PARSE_OBJECT *ElseOp;
    IfOp = OriginalElseOp->Common.Value.Arg;

    if (!IfOp ||
        (IfOp->Common.AmlOpcode != AML_IF_OP) ||
        (IfOp->Asl.Next && (IfOp->Asl.Next->Common.AmlOpcode != AML_ELSE_OP)))
    {


        if (OriginalElseOp->Common.DisasmOpcode == ACPI_DASM_DEFAULT)
        {
            AcpiOsPrintf ("%s", "Default");
            return;
        }

        AcpiOsPrintf ("%s", "Else");
        return;
    }



    ElseOp = IfOp->Common.Next;
    if (ElseOp && ElseOp->Common.Next)
    {
        if (OriginalElseOp->Common.DisasmOpcode == ACPI_DASM_DEFAULT)
        {
            AcpiOsPrintf ("%s", "Default");
            return;
        }

        AcpiOsPrintf ("%s", "Else");
        return;
    }

    if (OriginalElseOp->Common.DisasmOpcode == ACPI_DASM_DEFAULT)
    {




        AcpiOsPrintf ("%s", "Default");
        return;
    }

    if (OriginalElseOp->Common.DisasmOpcode == ACPI_DASM_CASE)
    {





        AcpiOsPrintf ("%s", "Case");
    }
    else
    {


        AcpiOsPrintf ("%s", "ElseIf");
    }

    IfOp->Common.DisasmFlags |= ACPI_PARSEOP_ELSEIF;



    IfOp->Common.Parent = OriginalElseOp->Common.Parent;
    ElseOp = IfOp->Common.Next;
    if (ElseOp &&
        (ElseOp->Common.AmlOpcode == AML_ELSE_OP))
    {


        ElseOp->Common.Parent = OriginalElseOp->Common.Parent;



        AcpiDmPromoteSubtree (OriginalElseOp);
    }
    else
    {


        IfOp->Common.Next = OriginalElseOp->Common.Next;
    }



    OriginalElseOp->Common.Value.Arg = ((void*)0);



    OriginalElseOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
    OriginalElseOp->Common.DisasmOpcode = ACPI_DASM_LNOT_PREFIX;



    OriginalElseOp->Common.Next = IfOp;
}
