
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_PARSE_TREE_HEADER2 ;
 int ASL_TREE_OUTPUT ;
 int ASL_WALK_VISIT_DB_SEPARATELY ;
 int ASL_WALK_VISIT_DOWNWARD ;
 int AslGbl_CurrentDB ;
 int CgAmlWriteWalk ;
 int CgUpdateHeader (int ) ;
 int DbgPrint (int ,int ) ;
 int TrWalkParseTree (int ,int,int ,int *,int *) ;

void
CgGenerateAmlOutput (
    void)
{



    TrWalkParseTree (AslGbl_CurrentDB,
        ASL_WALK_VISIT_DOWNWARD | ASL_WALK_VISIT_DB_SEPARATELY,
        CgAmlWriteWalk, ((void*)0), ((void*)0));

    DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER2);
    CgUpdateHeader (AslGbl_CurrentDB);
}
