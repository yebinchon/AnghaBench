
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {scalar_t__ Handle; } ;
typedef scalar_t__ BOOLEAN ;


 size_t ASL_FILE_AML_OUTPUT ;
 size_t ASL_FILE_INPUT ;
 size_t ASL_FILE_PREPROCESSOR ;
 size_t ASL_FILE_SOURCE_OUTPUT ;
 size_t ASL_MAX_FILE_TYPE ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_KeepPreprocessorTempFile ;
 scalar_t__ AslGbl_PreprocessFlag ;
 int AslGbl_SourceOutputFlag ;
 int FlCloseFile (size_t) ;
 int FlDeleteFile (size_t) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

__attribute__((used)) static void
CmFinishFiles(
    BOOLEAN DeleteAmlFile)
{
    UINT32 i;
    if (AslGbl_Files[ASL_FILE_PREPROCESSOR].Handle ==
        AslGbl_Files[ASL_FILE_INPUT].Handle)
    {
        AslGbl_Files[ASL_FILE_PREPROCESSOR].Handle = ((void*)0);
    }



    for (i = ASL_FILE_INPUT; i < ASL_MAX_FILE_TYPE; i++)
    {




        if (AslGbl_Files[i].Handle != stderr &&
            AslGbl_Files[i].Handle != stdout)
        {
            FlCloseFile (i);
        }
    }



    if (DeleteAmlFile)
    {
        FlDeleteFile (ASL_FILE_AML_OUTPUT);
    }



    if (AslGbl_PreprocessFlag && !AslGbl_KeepPreprocessorTempFile)
    {
        FlDeleteFile (ASL_FILE_PREPROCESSOR);
    }
    if (!AslGbl_SourceOutputFlag)
    {
        FlDeleteFile (ASL_FILE_SOURCE_OUTPUT);
    }
}
