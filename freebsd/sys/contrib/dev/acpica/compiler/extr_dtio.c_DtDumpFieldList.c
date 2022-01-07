
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* Next; int Value; int Name; int Flags; int TableOffset; int Column; int NameColumn; int ByteOffset; int Line; } ;
typedef TYPE_1__ DT_FIELD ;


 int ASL_DEBUG_OUTPUT ;
 int AslGbl_DebugFlag ;
 int DbgPrint (int ,char*,...) ;

void
DtDumpFieldList (
    DT_FIELD *Field)
{

    if (!AslGbl_DebugFlag || !Field)
    {
        return;
    }

    DbgPrint (ASL_DEBUG_OUTPUT, "\nField List:\n"
        "LineNo   ByteOff  NameCol  Column   TableOff "
        "Flags %32s : %s\n\n", "Name", "Value");

    while (Field)
    {
        DbgPrint (ASL_DEBUG_OUTPUT,
            "%.08X %.08X %.08X %.08X %.08X %2.2X    %32s : %s\n",
            Field->Line, Field->ByteOffset, Field->NameColumn,
            Field->Column, Field->TableOffset, Field->Flags,
            Field->Name, Field->Value);

        Field = Field->Next;
    }

    DbgPrint (ASL_DEBUG_OUTPUT, "\n\n");
}
