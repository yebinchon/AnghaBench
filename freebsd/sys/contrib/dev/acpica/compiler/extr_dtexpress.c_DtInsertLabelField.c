
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* NextLabel; int TableOffset; int Value; } ;
typedef TYPE_1__ DT_FIELD ;


 int ASL_DEBUG_OUTPUT ;
 TYPE_1__* AslGbl_LabelList ;
 int DbgPrint (int ,char*,int ,int ) ;

__attribute__((used)) static void
DtInsertLabelField (
    DT_FIELD *Field)
{

    DbgPrint (ASL_DEBUG_OUTPUT,
        "DtInsertLabelField: Found Label : %s at output table offset %X\n",
        Field->Value, Field->TableOffset);

    Field->NextLabel = AslGbl_LabelList;
    AslGbl_LabelList = Field;
}
