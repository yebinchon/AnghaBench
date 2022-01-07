
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_6__ {int Filename; } ;
struct TYPE_5__ {int FileType; int TotalLineCount; int OriginalInputFileSize; } ;
typedef TYPE_1__ ASL_GLOBAL_FILE_NODE ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_ERROR ;
 int AE_OK ;
 size_t ASL_FILE_INPUT ;
 int ASL_FILE_STDERR ;




 int AcpiGbl_DisasmFlag ;
 int AeClearErrorLog () ;
 int AePrintErrorLog (int ) ;
 int AslCheckForErrorExit () ;
 int AslDetectSourceFileType (TYPE_3__*) ;
 int AslDoDisassembly () ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_DirectoryPath ;
 int AslGbl_DoCompile ;
 int AslGbl_FileType ;
 TYPE_3__* AslGbl_Files ;
 int AslGbl_OutputFilenamePrefix ;
 int * AslGbl_Signature ;
 scalar_t__ AslGbl_UseDefaultAmlFilename ;
 int AslInitializeGlobals () ;
 int CmDoCompile () ;
 int DtDoCompile () ;
 int FALSE ;
 int FlCloseFile (size_t) ;
 TYPE_1__* FlGetCurrentFileNode () ;
 int FlGetFileSize (size_t) ;
 int FlInitOneFile (char*) ;
 int FlOpenAmlOutputFile (int ) ;
 int FlOpenInputFile (int ) ;
 int FlOpenMiscOutputFiles (int ) ;
 int FlSplitInputPathname (char*,int *,int *) ;
 int PrInitializeGlobals () ;
 int PrTerminatePreprocessor () ;
 int TRUE ;
 int UtBeginEvent (char*) ;
 int UtConvertBackslashes (int ) ;
 int UtEndEvent (int ) ;
 int UtLocalCacheCalloc (scalar_t__) ;
 int printf (char*,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

ACPI_STATUS
AslDoOneFile (
    char *Filename)
{
    ACPI_STATUS Status;
    UINT8 Event;
    ASL_GLOBAL_FILE_NODE *FileNode;




    AslInitializeGlobals ();
    PrInitializeGlobals ();






    Status = FlSplitInputPathname (Filename, &AslGbl_DirectoryPath, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }







    Status = FlInitOneFile(Filename);
    if (ACPI_FAILURE (Status))
    {
        return (AE_ERROR);
    }



    AslGbl_Files[ASL_FILE_INPUT].Filename =
        UtLocalCacheCalloc (strlen (Filename) + 1);

    strcpy (AslGbl_Files[ASL_FILE_INPUT].Filename, Filename);
    UtConvertBackslashes (AslGbl_Files[ASL_FILE_INPUT].Filename);





    Status = FlOpenInputFile (AslGbl_Files[ASL_FILE_INPUT].Filename);
    if (ACPI_FAILURE (Status))
    {
        AePrintErrorLog (ASL_FILE_STDERR);
        return (AE_ERROR);
    }

    FileNode = FlGetCurrentFileNode();
    if (!FileNode)
    {
        return (AE_ERROR);
    }

    FileNode->OriginalInputFileSize = FlGetFileSize (ASL_FILE_INPUT);



    AslGbl_FileType = AslDetectSourceFileType (&AslGbl_Files[ASL_FILE_INPUT]);
    FileNode->FileType = AslGbl_FileType;
    if (AslGbl_FileType == 129)
    {
        return (AE_ERROR);
    }





    if (AslGbl_UseDefaultAmlFilename)
    {
        AslGbl_OutputFilenamePrefix = AslGbl_Files[ASL_FILE_INPUT].Filename;
    }





    if (AslGbl_FileType == 131)
    {
        Event = UtBeginEvent ("Open AML output file");
        Status = FlOpenAmlOutputFile (AslGbl_OutputFilenamePrefix);
        UtEndEvent (Event);
        if (ACPI_FAILURE (Status))
        {
            AePrintErrorLog (ASL_FILE_STDERR);
            return (AE_ERROR);
        }
    }



    Status = FlOpenMiscOutputFiles (AslGbl_OutputFilenamePrefix);
    if (ACPI_FAILURE (Status))
    {
        AePrintErrorLog (ASL_FILE_STDERR);
        return (AE_ERROR);
    }





    switch (AslGbl_FileType)
    {



    case 130:

        Status = DtDoCompile ();
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        if (AslGbl_Signature)
        {
            AslGbl_Signature = ((void*)0);
        }



        Status = AslCheckForErrorExit ();
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }



        AeClearErrorLog ();
        PrTerminatePreprocessor ();
        return (Status);




    case 131:

        Status = CmDoCompile ();
        if (ACPI_FAILURE (Status))
        {
            PrTerminatePreprocessor ();
            return (Status);
        }





        FileNode->TotalLineCount = AslGbl_CurrentLineNumber;
        return (AE_OK);




    case 128:



        FlCloseFile (ASL_FILE_INPUT);
        AslGbl_DoCompile = FALSE;
        AcpiGbl_DisasmFlag = TRUE;
        Status = AslDoDisassembly ();
        return (Status);



    case 129:

        AePrintErrorLog (ASL_FILE_STDERR);
        return (AE_ERROR);

    default:

        printf ("Unknown file type %X\n", AslGbl_FileType);
        return (AE_ERROR);
    }
}
