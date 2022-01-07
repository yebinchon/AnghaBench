
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_2__ {int Filename; } ;


 size_t ASL_FILE_INPUT ;
 int AcpiOsPrintf (char*,int ,int ,int ) ;
 int AslCommonError2 (int ,int ,int ,int,int ,int ,char*) ;
 int AslGbl_CurrentLineBuffer ;
 int AslGbl_CurrentLineNumber ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_PreprocessorError ;
 int TRUE ;

void
PrError (
    UINT8 Level,
    UINT16 MessageId,
    UINT32 Column)
{






    if (Column > 120)
    {
        Column = 0;
    }



    AslCommonError2 (Level, MessageId,
        AslGbl_CurrentLineNumber, Column,
        AslGbl_CurrentLineBuffer,
        AslGbl_Files[ASL_FILE_INPUT].Filename, "Preprocessor");

    AslGbl_PreprocessorError = TRUE;
}
