
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* Arg; } ;
struct TYPE_8__ {int AmlOpcode; int DisasmFlags; TYPE_3__* Next; TYPE_1__ Value; } ;
struct TYPE_9__ {TYPE_2__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_LEGACY_ASL_ONLY ;
 int AcpiDmIsValidTarget (TYPE_3__*) ;
 scalar_t__ AcpiGbl_DoDisassemblerOptimizations ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AcpiDmIsOptimizationIgnored (
    ACPI_PARSE_OBJECT *StoreOp,
    ACPI_PARSE_OBJECT *StoreArgument)
{
    ACPI_PARSE_OBJECT *Argument1;
    ACPI_PARSE_OBJECT *Argument2;
    ACPI_PARSE_OBJECT *Target;




    if (AcpiGbl_DoDisassemblerOptimizations)
    {
        return (FALSE);
    }







    switch (StoreArgument->Common.AmlOpcode)
    {
    case 139:
    case 128:
    case 131:
    case 132:
    case 130:
    case 129:
    case 138:
    case 136:
    case 135:
    case 133:



        Argument1 = StoreArgument->Common.Value.Arg;
        Argument2 = Argument1->Common.Next;
        Target = Argument2->Common.Next;

        if (!AcpiDmIsValidTarget (Target))
        {
            StoreOp->Common.DisasmFlags |= ACPI_PARSEOP_LEGACY_ASL_ONLY;
            return (TRUE);
        }
        break;

    case 134:



        Argument1 = StoreArgument->Common.Value.Arg;
        Argument2 = Argument1->Common.Next;
        Target = Argument2->Common.Next;

        if (!AcpiDmIsValidTarget (Target) ||
            !AcpiDmIsValidTarget (Target->Common.Next))
        {
            StoreOp->Common.DisasmFlags |= ACPI_PARSEOP_LEGACY_ASL_ONLY;
            return (TRUE);
        }
        break;

    case 137:



        Argument1 = StoreArgument->Common.Value.Arg;
        Target = Argument1->Common.Next;

        if (!AcpiDmIsValidTarget (Target))
        {
            StoreOp->Common.DisasmFlags |= ACPI_PARSEOP_LEGACY_ASL_ONLY;
            return (TRUE);
        }
        break;

    default:
        break;
    }

    return (FALSE);
}
