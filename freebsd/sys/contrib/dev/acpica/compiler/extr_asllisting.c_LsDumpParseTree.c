
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ASL_PARSE_TREE_HEADER1 ;
 int ASL_TREE_OUTPUT ;
 int ASL_WALK_VISIT_DOWNWARD ;
 int AslGbl_DebugFlag ;
 int AslGbl_ParseTreeRoot ;
 int DbgPrint (int ,char*) ;
 int LsTreeWriteWalk ;
 int TrWalkParseTree (int ,int ,int ,int *,int *) ;

void
LsDumpParseTree (
    void)
{

    if (!AslGbl_DebugFlag)
    {
        return;
    }

    DbgPrint (ASL_TREE_OUTPUT, "\nOriginal parse tree from parser:\n\n");
    DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER1);

    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        LsTreeWriteWalk, ((void*)0), ((void*)0));

    DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER1);
}
