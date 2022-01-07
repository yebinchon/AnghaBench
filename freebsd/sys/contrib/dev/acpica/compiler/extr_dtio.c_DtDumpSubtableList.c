
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_DEBUG_OUTPUT ;
 int AslGbl_DebugFlag ;
 int AslGbl_RootTable ;
 int DbgPrint (int ,char*) ;
 int DtDumpSubtableInfo ;
 int DtDumpSubtableTree ;
 int DtWalkTableTree (int ,int ,int *,int *) ;

void
DtDumpSubtableList (
    void)
{

    if (!AslGbl_DebugFlag || !AslGbl_RootTable)
    {
        return;
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "Subtable Info:\n"
        "Depth                      Name Length   TotalLen LenSize  Flags    "
        "This     Parent   Child    Peer\n\n");
    DtWalkTableTree (AslGbl_RootTable, DtDumpSubtableInfo, ((void*)0), ((void*)0));

    DbgPrint (ASL_DEBUG_OUTPUT,
        "\nSubtable Tree: (Depth, Name, Subtable, Length, TotalLength)\n\n");
    DtWalkTableTree (AslGbl_RootTable, DtDumpSubtableTree, ((void*)0), ((void*)0));

    DbgPrint (ASL_DEBUG_OUTPUT, "\n");
}
