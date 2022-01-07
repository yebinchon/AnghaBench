
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int AmlOpcode; scalar_t__ DisasmOpcode; char* OperatorSymbol; TYPE_4__* Next; int DisasmFlags; TYPE_2__* Parent; } ;
struct TYPE_18__ {TYPE_3__ Common; } ;
struct TYPE_15__ {int AmlOpcode; } ;
struct TYPE_16__ {TYPE_1__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OP_WALK_INFO ;


 scalar_t__ ACPI_DASM_LNOT_PREFIX ;
 scalar_t__ ACPI_DASM_LNOT_SUFFIX ;
 int ACPI_PARSEOP_ASSIGNMENT ;
 int ACPI_PARSEOP_CLOSING_PAREN ;
 int ACPI_PARSEOP_COMPOUND_ASSIGNMENT ;
 int ACPI_PARSEOP_IGNORE ;
 int ACPI_PARSEOP_LEGACY_ASL_ONLY ;





 int AML_BUFFER_OP ;
 int AML_PACKAGE_OP ;



 int AML_STRING_OP ;

 int AML_VARIABLE_PACKAGE_OP ;
 void* AcpiDmGetCompoundSymbol (int) ;
 int AcpiDmIsOptimizationIgnored (TYPE_4__*,TYPE_4__*) ;
 int AcpiDmIsTargetAnOperand (TYPE_4__*,TYPE_4__*,int ) ;
 int AcpiDmIsValidTarget (TYPE_4__*) ;
 int AcpiDmPromoteTarget (TYPE_4__*,TYPE_4__*) ;
 int AcpiGbl_CstyleDisassembly ;
 int AcpiGbl_DoDisassemblerOptimizations ;
 int AcpiOsPrintf (char*) ;
 TYPE_4__* AcpiPsGetArg (TYPE_4__*,int ) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiDmCheckForSymbolicOpcode (
    ACPI_PARSE_OBJECT *Op,
    ACPI_OP_WALK_INFO *Info)
{
    char *OperatorSymbol = ((void*)0);
    ACPI_PARSE_OBJECT *Argument1;
    ACPI_PARSE_OBJECT *Argument2;
    ACPI_PARSE_OBJECT *Target;
    ACPI_PARSE_OBJECT *Target2;




    if (!AcpiGbl_CstyleDisassembly)
    {
        return (FALSE);
    }



    Argument1 = AcpiPsGetArg (Op, 0);
    if (!Argument1)
    {
        return (FALSE);
    }



    Argument2 = Argument1->Common.Next;



    switch (Op->Common.AmlOpcode)
    {
    case 148:
        OperatorSymbol = " + ";
        break;

    case 128:
        OperatorSymbol = " - ";
        break;

    case 132:
        OperatorSymbol = " * ";
        break;

    case 142:
        OperatorSymbol = " / ";
        break;

    case 133:
        OperatorSymbol = " % ";
        break;

    case 131:
        OperatorSymbol = " << ";
        break;

    case 130:
        OperatorSymbol = " >> ";
        break;

    case 147:
        OperatorSymbol = " & ";
        break;

    case 145:
        OperatorSymbol = " | ";
        break;

    case 144:
        OperatorSymbol = " ^ ";
        break;



    case 139:
        OperatorSymbol = " && ";
        break;

    case 138:
        OperatorSymbol = " == ";
        break;

    case 137:
        OperatorSymbol = " > ";
        break;

    case 136:
        OperatorSymbol = " < ";
        break;

    case 134:
        OperatorSymbol = " || ";
        break;

    case 135:





        switch (Argument1->Common.AmlOpcode)
        {
        case 138:
            OperatorSymbol = " != ";
            break;

        case 137:
            OperatorSymbol = " <= ";
            break;

        case 136:
            OperatorSymbol = " >= ";
            break;

        default:



            AcpiOsPrintf ("!");
            return (TRUE);
        }

        Argument1->Common.DisasmOpcode = ACPI_DASM_LNOT_SUFFIX;
        Op->Common.DisasmOpcode = ACPI_DASM_LNOT_PREFIX;



        Argument2 = AcpiPsGetArg (Argument1, 0);
        if (!Argument2)
        {
            return (FALSE);
        }

        Argument2->Common.OperatorSymbol = OperatorSymbol;
        return (TRUE);

    case 140:






        if ((Argument1->Common.AmlOpcode == AML_STRING_OP) ||
            (Argument1->Common.AmlOpcode == AML_BUFFER_OP) ||
            (Argument1->Common.AmlOpcode == AML_PACKAGE_OP) ||
            (Argument1->Common.AmlOpcode == AML_VARIABLE_PACKAGE_OP))
        {
            Op->Common.DisasmFlags |= ACPI_PARSEOP_CLOSING_PAREN;
            return (FALSE);
        }



        Argument1->Common.OperatorSymbol = " [";
        Argument2->Common.OperatorSymbol = "]";
        break;



    case 143:
        OperatorSymbol = "--";
        break;

    case 141:
        OperatorSymbol = "++";
        break;

    case 146:
    case 129:
        OperatorSymbol = ((void*)0);
        break;

    default:
        return (FALSE);
    }

    if (Argument1->Common.DisasmOpcode == ACPI_DASM_LNOT_SUFFIX)
    {
        return (TRUE);
    }







    if (!Argument1->Common.OperatorSymbol)
    {
        Argument1->Common.OperatorSymbol = OperatorSymbol;
    }
    switch (Op->Common.AmlOpcode)
    {
    case 148:
    case 128:
    case 132:
    case 142:
    case 133:
    case 131:
    case 130:
    case 147:
    case 145:
    case 144:



        Target = Argument2->Common.Next;
        if (Op->Common.AmlOpcode == 142)
        {
            Target2 = Target->Common.Next;






            if (!AcpiGbl_DoDisassemblerOptimizations)
            {
                if (AcpiDmIsValidTarget (Target))
                {
                    Argument1->Common.OperatorSymbol = ((void*)0);
                    Op->Common.DisasmFlags |= ACPI_PARSEOP_LEGACY_ASL_ONLY;
                    return (FALSE);
                }

                Target->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                Target = Target2;
            }
            else
            {





                if (AcpiDmIsValidTarget (Target) &&
                    AcpiDmIsValidTarget (Target2))
                {
                    Argument1->Common.OperatorSymbol = ((void*)0);
                    Op->Common.DisasmFlags |= ACPI_PARSEOP_LEGACY_ASL_ONLY;
                    return (FALSE);
                }

                if (AcpiDmIsValidTarget (Target))
                {


                    Op->Common.AmlOpcode = 133;

                    Argument1->Common.OperatorSymbol = " % ";
                    Target2->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                }
                else
                {
                    Target->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                    Target = Target2;
                }
            }
        }



        if (!Target)
        {
            return (FALSE);
        }

        if (!AcpiDmIsValidTarget (Target))
        {

            break;
        }







        AcpiDmPromoteTarget (Op, Target);



        switch (Op->Common.AmlOpcode)
        {


        case 148:
        case 132:
        case 147:
        case 145:
        case 144:
            if ((AcpiDmIsTargetAnOperand (Target, Argument1, TRUE)) ||
                (AcpiDmIsTargetAnOperand (Target, Argument2, TRUE)))
            {
                Target->Common.OperatorSymbol =
                    AcpiDmGetCompoundSymbol (Op->Common.AmlOpcode);



                Op->Common.DisasmFlags |= ACPI_PARSEOP_COMPOUND_ASSIGNMENT;
                Argument1->Common.OperatorSymbol = ((void*)0);
                return (TRUE);
            }
            break;



        case 128:
        case 142:
        case 133:
        case 131:
        case 130:
            if ((AcpiDmIsTargetAnOperand (Target, Argument1, TRUE)))
            {
                Target->Common.OperatorSymbol =
                    AcpiDmGetCompoundSymbol (Op->Common.AmlOpcode);



                Op->Common.DisasmFlags |= ACPI_PARSEOP_COMPOUND_ASSIGNMENT;
                Argument1->Common.OperatorSymbol = ((void*)0);
                return (TRUE);
            }
            break;

        default:
            break;
        }





        switch (Op->Common.Parent->Common.AmlOpcode)
        {
        case 148:
        case 128:
        case 132:
        case 142:
        case 133:
        case 131:
        case 130:
        case 147:
        case 145:
        case 144:
        case 139:
        case 138:
        case 137:
        case 136:
        case 134:

            Op->Common.DisasmFlags |= ACPI_PARSEOP_ASSIGNMENT;
            AcpiOsPrintf ("(");
            break;

        default:
            break;
        }



        Target->Common.OperatorSymbol = " = (";
        return (TRUE);



    case 143:
    case 141:
        return (TRUE);

    case 140:



        Target = Argument2->Common.Next;
        if (AcpiDmIsValidTarget (Target))
        {
            AcpiDmPromoteTarget (Op, Target);

            if (!Target->Common.OperatorSymbol)
            {
                Target->Common.OperatorSymbol = " = ";
            }
        }
        return (TRUE);

    case 129:







        if (AcpiDmIsOptimizationIgnored (Op, Argument1))
        {
            return (FALSE);
        }






        Target = Argument1->Common.Next;
        if (!Target)
        {
            return (FALSE);
        }

        AcpiDmPromoteTarget (Op, Target);
        if (!Target->Common.OperatorSymbol)
        {
            Target->Common.OperatorSymbol = " = ";
        }
        return (TRUE);

    case 146:



        Target = Argument1->Common.Next;
        if (!Target)
        {
            return (FALSE);
        }

        if (AcpiDmIsValidTarget (Target))
        {


            AcpiDmPromoteTarget (Op, Target);
            Target->Common.OperatorSymbol = " = ~";
        }
        else
        {


            AcpiOsPrintf ("~");
        }
        return (TRUE);

    default:
        break;
    }



    AcpiOsPrintf ("(");
    return (TRUE);
}
