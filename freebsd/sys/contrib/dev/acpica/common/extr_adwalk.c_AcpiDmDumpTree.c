
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * WalkState; scalar_t__ Level; scalar_t__ Count; scalar_t__ Flags; } ;
typedef int ACPI_PARSE_OBJECT ;
typedef TYPE_1__ ACPI_OP_WALK_INFO ;


 int AcpiDmDumpDescending ;
 int AcpiDmWalkParseTree (int *,int ,int *,TYPE_1__*) ;
 int AcpiOsPrintf (char*) ;

void
AcpiDmDumpTree (
    ACPI_PARSE_OBJECT *Origin)
{
    ACPI_OP_WALK_INFO Info;


    if (!Origin)
    {
        return;
    }

    AcpiOsPrintf ("/*\nAML Parse Tree\n\n");
    Info.Flags = 0;
    Info.Count = 0;
    Info.Level = 0;
    Info.WalkState = ((void*)0);

    AcpiDmWalkParseTree (Origin, AcpiDmDumpDescending, ((void*)0), &Info);
    AcpiOsPrintf ("*/\n\n");
}
