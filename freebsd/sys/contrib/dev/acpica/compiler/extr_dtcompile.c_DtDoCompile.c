
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_5__ {char* Filename; int Handle; } ;
struct TYPE_4__ {int OutputByteLength; int TotalFields; int ParserErrorDetected; int OriginalInputFileSize; int TotalLineCount; } ;
typedef int DT_FIELD ;
typedef TYPE_1__ ASL_GLOBAL_FILE_NODE ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_ERROR ;
 int AE_OK ;
 int ASL_ERROR ;
 size_t ASL_FILE_AML_OUTPUT ;
 size_t ASL_FILE_INPUT ;
 int ASL_MSG_SYNTAX ;
 int ASL_PARSE_OUTPUT ;
 int AslGbl_CurrentLineNumber ;
 scalar_t__ AslGbl_DtLexBisonPrototype ;
 int * AslGbl_FieldList ;
 TYPE_3__* AslGbl_Files ;
 int AslGbl_InputByteCount ;
 int AslGbl_InputFieldCount ;
 int AslGbl_OutputFilenamePrefix ;
 scalar_t__ AslGbl_PreprocessFlag ;
 scalar_t__ AslGbl_PreprocessOnly ;
 int AslGbl_RootTable ;
 int AslGbl_TableLength ;
 int DbgPrint (int ,char*,int ,int ) ;
 int DtCompileDataTable (int **) ;
 int DtCompilerInitLexer (int ) ;
 int DtCompilerParserparse () ;
 int DtCompilerTerminateLexer () ;
 int DtError (int ,int ,int *,char*) ;
 int DtInitialize () ;
 int DtOutputBinary (int ) ;
 int * DtScanFile (int ) ;
 int DtWriteTableToListing () ;
 TYPE_1__* FlGetCurrentFileNode () ;
 int FlOpenAmlOutputFile (int ) ;
 int HxDoHexOutput () ;
 int PrDoPreprocess () ;
 int TRUE ;
 int UtBeginEvent (char*) ;
 int UtEndEvent (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

ACPI_STATUS
DtDoCompile (
    void)
{
    ACPI_STATUS Status;
    UINT8 Event;
    DT_FIELD *FieldList;
    ASL_GLOBAL_FILE_NODE *FileNode;




    DtInitialize ();



    if (AslGbl_PreprocessFlag)
    {


        Event = UtBeginEvent ("Preprocess input file");
        PrDoPreprocess ();
        UtEndEvent (Event);

        if (AslGbl_PreprocessOnly)
        {
            return (AE_OK);
        }
    }



    if (AslGbl_DtLexBisonPrototype)
    {
        Event = UtBeginEvent ("Parse data table in prototype mode");

        DtCompilerInitLexer (AslGbl_Files[ASL_FILE_INPUT].Handle);
        DtCompilerParserparse ();
        FieldList = AslGbl_FieldList;
        DtCompilerTerminateLexer ();

        UtEndEvent (Event);
    }
    else
    {




        Event = UtBeginEvent ("Scan and parse input file");
        FieldList = DtScanFile (AslGbl_Files[ASL_FILE_INPUT].Handle);
        UtEndEvent (Event);
    }



    if (!FieldList)
    {


        DtError (ASL_ERROR, ASL_MSG_SYNTAX, ((void*)0),
            "Input file does not appear to be an ASL or data table source file");

        return (AE_ERROR);
    }

    Event = UtBeginEvent ("Compile parse tree");

    Status = DtCompileDataTable (&FieldList);
    UtEndEvent (Event);

    FileNode = FlGetCurrentFileNode ();
    if (!FileNode)
    {
        fprintf (stderr, "Summary for %s could not be generated",
            AslGbl_Files[ASL_FILE_INPUT].Filename);
    }
    else
    {
        FileNode->TotalLineCount = AslGbl_CurrentLineNumber;
        FileNode->OriginalInputFileSize = AslGbl_InputByteCount;
        DbgPrint (ASL_PARSE_OUTPUT, "Line count: %u input file size: %u\n",
                FileNode->TotalLineCount, FileNode->OriginalInputFileSize);
    }

    if (ACPI_FAILURE (Status))
    {
        if (FileNode)
        {
            FileNode->ParserErrorDetected = TRUE;
        }



        DtError (ASL_ERROR, ASL_MSG_SYNTAX, ((void*)0),
            "Could not compile input file");

        return (Status);
    }



    AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename = ((void*)0);
    Status = FlOpenAmlOutputFile (AslGbl_OutputFilenamePrefix);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    DtOutputBinary (AslGbl_RootTable);
    HxDoHexOutput ();
    DtWriteTableToListing ();



    if (FileNode)
    {
        FileNode->TotalFields = AslGbl_InputFieldCount;
        FileNode->OutputByteLength = AslGbl_TableLength;
    }

    return (Status);
}
