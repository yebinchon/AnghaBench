
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AslGbl_CurrentLineNumber ;
 int * AslGbl_DirectiveStack ;
 scalar_t__ AslGbl_IfDepth ;
 void* AslGbl_IgnoringThisCodeBlock ;
 int * AslGbl_InputFileList ;
 void* AslGbl_PreprocessorError ;
 int AslGbl_PreprocessorLineNumber ;
 void* FALSE ;

void
PrInitializeGlobals (
    void)
{


    AslGbl_InputFileList = ((void*)0);
    AslGbl_CurrentLineNumber = 1;
    AslGbl_PreprocessorLineNumber = 1;
    AslGbl_PreprocessorError = FALSE;



    AslGbl_IfDepth = 0;
    AslGbl_IgnoringThisCodeBlock = FALSE;
    AslGbl_DirectiveStack = ((void*)0);
}
