
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DisasmFlags; int AmlOpcode; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_ASSIGNMENT ;
 int ACPI_PARSEOP_CLOSING_PAREN ;
 int ACPI_PARSEOP_COMPOUND_ASSIGNMENT ;
 int ACPI_PARSEOP_LEGACY_ASL_ONLY ;





 int AML_COMMENT_END_NODE ;
 int ASL_CV_PRINT_ONE_COMMENT (TYPE_2__*,int ,int *,int ) ;
 int AcpiGbl_CstyleDisassembly ;
 int AcpiOsPrintf (char*) ;

void
AcpiDmCloseOperator (
    ACPI_PARSE_OBJECT *Op)
{



    if (!AcpiGbl_CstyleDisassembly)
    {
        AcpiOsPrintf (")");
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        return;
    }

    if (Op->Common.DisasmFlags & ACPI_PARSEOP_LEGACY_ASL_ONLY)
    {
        AcpiOsPrintf (")");
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        return;
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
    case 139:
    case 138:
    case 137:
    case 136:
    case 134:



        if (Op->Common.DisasmFlags & ACPI_PARSEOP_COMPOUND_ASSIGNMENT)
        {
            ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
            return;
        }



        if (Op->Common.DisasmFlags & ACPI_PARSEOP_ASSIGNMENT)
        {
            AcpiOsPrintf (")");
        }
        break;

    case 140:



        if (Op->Common.DisasmFlags & ACPI_PARSEOP_CLOSING_PAREN)
        {
            AcpiOsPrintf (")");
        }
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        return;



    case 143:
    case 141:
    case 135:
    case 146:
    case 129:
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        return;

    default:


        break;
    }

    AcpiOsPrintf (")");
    ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);

    return;
}
