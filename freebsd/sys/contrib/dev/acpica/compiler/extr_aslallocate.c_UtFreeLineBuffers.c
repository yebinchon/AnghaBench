
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AslGbl_CurrentLineBuffer ;
 int AslGbl_ExpressionTokenBuffer ;
 int AslGbl_MacroTokenBuffer ;
 int AslGbl_MainTokenBuffer ;
 int free (int ) ;

void
UtFreeLineBuffers (
    void)
{

    free (AslGbl_CurrentLineBuffer);
    free (AslGbl_MainTokenBuffer);
    free (AslGbl_MacroTokenBuffer);
    free (AslGbl_ExpressionTokenBuffer);
}
