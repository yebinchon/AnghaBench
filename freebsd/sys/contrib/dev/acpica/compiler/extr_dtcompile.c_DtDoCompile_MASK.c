#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_5__ {char* Filename; int /*<<< orphan*/  Handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  OutputByteLength; int /*<<< orphan*/  TotalFields; int /*<<< orphan*/  ParserErrorDetected; int /*<<< orphan*/  OriginalInputFileSize; int /*<<< orphan*/  TotalLineCount; } ;
typedef  int /*<<< orphan*/  DT_FIELD ;
typedef  TYPE_1__ ASL_GLOBAL_FILE_NODE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 size_t ASL_FILE_AML_OUTPUT ; 
 size_t ASL_FILE_INPUT ; 
 int /*<<< orphan*/  ASL_MSG_SYNTAX ; 
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  AslGbl_CurrentLineNumber ; 
 scalar_t__ AslGbl_DtLexBisonPrototype ; 
 int /*<<< orphan*/ * AslGbl_FieldList ; 
 TYPE_3__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_InputByteCount ; 
 int /*<<< orphan*/  AslGbl_InputFieldCount ; 
 int /*<<< orphan*/  AslGbl_OutputFilenamePrefix ; 
 scalar_t__ AslGbl_PreprocessFlag ; 
 scalar_t__ AslGbl_PreprocessOnly ; 
 int /*<<< orphan*/  AslGbl_RootTable ; 
 int /*<<< orphan*/  AslGbl_TableLength ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC18 (
    void)
{
    ACPI_STATUS             Status;
    UINT8                   Event;
    DT_FIELD                *FieldList;
    ASL_GLOBAL_FILE_NODE    *FileNode;


    /* Initialize globals */

    FUNC7 ();

    /* Preprocessor */

    if (AslGbl_PreprocessFlag)
    {
        /* Preprocessor */

        Event = FUNC15 ("Preprocess input file");
        FUNC14 ();
        FUNC16 (Event);

        if (AslGbl_PreprocessOnly)
        {
            return (AE_OK);
        }
    }

    /* Compile the parse tree */

    if (AslGbl_DtLexBisonPrototype)
    {
        Event = FUNC15 ("Parse data table in prototype mode");

        FUNC3 (AslGbl_Files[ASL_FILE_INPUT].Handle);
        FUNC4 ();
        FieldList = AslGbl_FieldList;
        FUNC5 ();

        FUNC16 (Event);
    }
    else
    {
        /*
         * Scan the input file (file is already open) and
         * build the parse tree
         */
        Event = FUNC15 ("Scan and parse input file");
        FieldList = FUNC9 (AslGbl_Files[ASL_FILE_INPUT].Handle);
        FUNC16 (Event);
    }

    /* Did the parse tree get successfully constructed? */

    if (!FieldList)
    {
        /* TBD: temporary error message. Msgs should come from function above */

        FUNC6 (ASL_ERROR, ASL_MSG_SYNTAX, NULL,
            "Input file does not appear to be an ASL or data table source file");

        return (AE_ERROR);
    }

    Event = FUNC15 ("Compile parse tree");

    Status = FUNC2 (&FieldList);
    FUNC16 (Event);

    FileNode = FUNC11 ();
    if (!FileNode)
    {
        FUNC17 (stderr, "Summary for %s could not be generated",
            AslGbl_Files[ASL_FILE_INPUT].Filename);
    }
    else
    {
        FileNode->TotalLineCount = AslGbl_CurrentLineNumber;
        FileNode->OriginalInputFileSize = AslGbl_InputByteCount;
        FUNC1 (ASL_PARSE_OUTPUT, "Line count: %u input file size: %u\n",
                FileNode->TotalLineCount, FileNode->OriginalInputFileSize);
    }

    if (FUNC0 (Status))
    {
        if (FileNode)
        {
            FileNode->ParserErrorDetected = TRUE;
        }

        /* TBD: temporary error message. Msgs should come from function above */

        FUNC6 (ASL_ERROR, ASL_MSG_SYNTAX, NULL,
            "Could not compile input file");

        return (Status);
    }

    /* Create/open the binary output file */

    AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename = NULL;
    Status = FUNC12 (AslGbl_OutputFilenamePrefix);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* Write the binary, then the optional hex file */

    FUNC8 (AslGbl_RootTable);
    FUNC13 ();
    FUNC10 ();

    /* Save the compile time statistics to the current file node */

    if (FileNode)
    {
        FileNode->TotalFields = AslGbl_InputFieldCount;
        FileNode->OutputByteLength = AslGbl_TableLength;
    }

    return (Status);
}