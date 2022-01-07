
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_DEBUG_OUTPUT ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_IfDepth ;
 scalar_t__ AslGbl_IgnoringThisCodeBlock ;
 int DbgPrint (int ,char*,int ,int,char*,int,char*,char*,char*,int) ;

__attribute__((used)) static void
PrDbgPrint (
    char *Action,
    char *DirectiveName)
{

    DbgPrint (ASL_DEBUG_OUTPUT, "Pr(%.4u) - [%u %s] "
        "%*s %s #%s, IfDepth %u\n",
        AslGbl_CurrentLineNumber, AslGbl_IfDepth,
        AslGbl_IgnoringThisCodeBlock ? "I" : "E",
        AslGbl_IfDepth * 4, " ",
        Action, DirectiveName, AslGbl_IfDepth);
}
