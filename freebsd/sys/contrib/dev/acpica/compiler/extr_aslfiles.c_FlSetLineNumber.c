
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ASL_PARSE_OUTPUT ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_LogicalLineNumber ;
 int DbgPrint (int ,char*,int ,int ) ;

void
FlSetLineNumber (
    UINT32 LineNumber)
{

    DbgPrint (ASL_PARSE_OUTPUT, "\n#line: New line number %u (old %u)\n",
         LineNumber, AslGbl_LogicalLineNumber);

    AslGbl_CurrentLineNumber = LineNumber;
}
