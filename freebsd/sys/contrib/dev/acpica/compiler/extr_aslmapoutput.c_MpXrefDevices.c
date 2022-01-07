
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int References; } ;
typedef TYPE_1__ ACPI_GPIO_INFO ;


 int ASL_FILE_MAP_OUTPUT ;
 int ASL_WALK_VISIT_DOWNWARD ;
 int AslGbl_ParseTreeRoot ;
 int FlPrintFile (int ,char*) ;
 int MpNamespaceXrefBegin ;
 int TrWalkParseTree (int ,int ,int ,int *,TYPE_1__*) ;

__attribute__((used)) static void
MpXrefDevices (
    ACPI_GPIO_INFO *Info)
{



    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        MpNamespaceXrefBegin, ((void*)0), Info);

    if (!Info->References)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT, "  // **** No references in table");
    }
}
