
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_4__ {int Value; } ;
typedef TYPE_1__ DT_FIELD ;
typedef int ACPI_STATUS ;


 int AE_OK ;
 int ASL_DEBUG_OUTPUT ;
 TYPE_1__* AslGbl_CurrentField ;
 int DbgPrint (int ,char*,int ) ;
 int DtEvaluateExpression (int ) ;

ACPI_STATUS
DtResolveIntegerExpression (
    DT_FIELD *Field,
    UINT64 *ReturnValue)
{
    UINT64 Result;


    DbgPrint (ASL_DEBUG_OUTPUT, "Full Integer expression: %s\n",
        Field->Value);

    AslGbl_CurrentField = Field;

    Result = DtEvaluateExpression (Field->Value);
    *ReturnValue = Result;
    return (AE_OK);
}
