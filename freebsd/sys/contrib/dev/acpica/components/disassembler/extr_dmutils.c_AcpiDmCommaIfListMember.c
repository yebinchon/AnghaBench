
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int DisasmFlags; TYPE_3__* Next; int OperatorSymbol; int Parent; } ;
struct TYPE_12__ {TYPE_4__ Common; } ;
struct TYPE_8__ {int String; } ;
struct TYPE_9__ {int DisasmFlags; scalar_t__ AmlOpcode; int Next; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_IGNORE ;
 int ACPI_PARSEOP_PARAMETER_LIST ;
 int AMLCOMMENT_INLINE ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 int ASL_CV_PRINT_ONE_COMMENT (TYPE_5__*,int ,int *,int ) ;
 int AcpiDmListType (int ) ;
 int AcpiOsPrintf (char*) ;
 int BLOCK_COMMA_LIST ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiDmCommaIfListMember (
    ACPI_PARSE_OBJECT *Op)
{

    if (!Op->Common.Next)
    {
        ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
        return (FALSE);
    }

    if (AcpiDmListType (Op->Common.Parent) & BLOCK_COMMA_LIST)
    {


        if (Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_IGNORE)
        {
            ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
            return (FALSE);
        }



        if ((Op->Common.Next->Common.AmlOpcode == AML_INT_NAMEPATH_OP) &&
            (!Op->Common.Next->Common.Value.String))
        {






            if (!Op->Common.Next->Common.Next)
            {
                ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
                return (FALSE);
            }
        }

        if ((Op->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST) &&
            (!(Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST)))
        {
            ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
            return (FALSE);
        }



        if (!Op->Common.OperatorSymbol)
        {
            AcpiOsPrintf (", ");
            ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
        }

        return (TRUE);
    }

    else if ((Op->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST) &&
             (Op->Common.Next->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST))
    {
        AcpiOsPrintf (", ");
        ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);

        return (TRUE);
    }

    return (FALSE);
}
