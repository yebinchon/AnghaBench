
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Handle; } ;
typedef scalar_t__ BOOLEAN ;


 int ASL_DEBUG_OUTPUT ;
 size_t ASL_FILE_INPUT ;
 size_t ASL_FILE_PREPROCESSOR ;
 int AslCompilerin ;
 scalar_t__ AslGbl_CurrentLineNumber ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_PreprocessOnly ;
 int DbgPrint (int ,char*) ;
 int FlCloseFile (size_t) ;
 int FlSeekFile (size_t,int ) ;
 int PrDumpPredefinedNames () ;
 scalar_t__ PrPopInputFileStack () ;
 int PrPreprocessInputFile () ;

void
PrDoPreprocess (
    void)
{
    BOOLEAN MoreInputFiles;


    DbgPrint (ASL_DEBUG_OUTPUT, "Starting preprocessing phase\n\n");


    FlSeekFile (ASL_FILE_INPUT, 0);
    PrDumpPredefinedNames ();



    do
    {
        PrPreprocessInputFile ();
        MoreInputFiles = PrPopInputFileStack ();

    } while (MoreInputFiles);



    FlCloseFile (ASL_FILE_INPUT);
    AslGbl_Files[ASL_FILE_INPUT].Handle = AslGbl_Files[ASL_FILE_PREPROCESSOR].Handle;
    AslCompilerin = AslGbl_Files[ASL_FILE_INPUT].Handle;



    FlSeekFile (ASL_FILE_INPUT, 0);
    if (!AslGbl_PreprocessOnly)
    {
        AslGbl_CurrentLineNumber = 0;
    }

    DbgPrint (ASL_DEBUG_OUTPUT, "Preprocessing phase complete \n\n");
}
