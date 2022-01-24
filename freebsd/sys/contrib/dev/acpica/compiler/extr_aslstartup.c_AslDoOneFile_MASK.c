#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_6__ {int /*<<< orphan*/  Filename; } ;
struct TYPE_5__ {int FileType; int /*<<< orphan*/  TotalLineCount; int /*<<< orphan*/  OriginalInputFileSize; } ;
typedef  TYPE_1__ ASL_GLOBAL_FILE_NODE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 size_t ASL_FILE_INPUT ; 
 int /*<<< orphan*/  ASL_FILE_STDERR ; 
#define  ASL_INPUT_TYPE_ASCII_ASL 131 
#define  ASL_INPUT_TYPE_ASCII_DATA 130 
#define  ASL_INPUT_TYPE_BINARY 129 
#define  ASL_INPUT_TYPE_BINARY_ACPI_TABLE 128 
 int /*<<< orphan*/  AcpiGbl_DisasmFlag ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  AslGbl_CurrentLineNumber ; 
 int /*<<< orphan*/  AslGbl_DirectoryPath ; 
 int /*<<< orphan*/  AslGbl_DoCompile ; 
 int AslGbl_FileType ; 
 TYPE_3__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_OutputFilenamePrefix ; 
 int /*<<< orphan*/ * AslGbl_Signature ; 
 scalar_t__ AslGbl_UseDefaultAmlFilename ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC25 (char*) ; 

ACPI_STATUS
FUNC26 (
    char                    *Filename)
{
    ACPI_STATUS             Status;
    UINT8                   Event;
    ASL_GLOBAL_FILE_NODE    *FileNode;


    /* Re-initialize "some" compiler/preprocessor globals */

    FUNC6 ();
    FUNC17 ();

    /*
     * Extract the directory path. This path is used for possible include
     * files and the optional AML filename embedded in the input file
     * DefinitionBlock declaration.
     */
    Status = FUNC16 (Filename, &AslGbl_DirectoryPath, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /*
     * There was an input file detected at this point. Each input ASL file is
     * associated with one global file node consisting of the input file and
     * all output files associated with it. This is useful when compiling
     * multiple files in one command.
     */
    Status = FUNC12(Filename);
    if (FUNC0 (Status))
    {
        return (AE_ERROR);
    }

    /* Take a copy of the input filename, convert any backslashes */

    AslGbl_Files[ASL_FILE_INPUT].Filename =
        FUNC22 (FUNC25 (Filename) + 1);

    FUNC24 (AslGbl_Files[ASL_FILE_INPUT].Filename, Filename);
    FUNC20 (AslGbl_Files[ASL_FILE_INPUT].Filename);

    /*
     * Open the input file. Here, this should be an ASCII source file,
     * either an ASL file or a Data Table file
     */
    Status = FUNC14 (AslGbl_Files[ASL_FILE_INPUT].Filename);
    if (FUNC0 (Status))
    {
        FUNC2 (ASL_FILE_STDERR);
        return (AE_ERROR);
    }

    FileNode = FUNC10();
    if (!FileNode)
    {
        return (AE_ERROR);
    }

    FileNode->OriginalInputFileSize = FUNC11 (ASL_FILE_INPUT);

    /* Determine input file type */

    AslGbl_FileType = FUNC4 (&AslGbl_Files[ASL_FILE_INPUT]);
    FileNode->FileType = AslGbl_FileType;
    if (AslGbl_FileType == ASL_INPUT_TYPE_BINARY)
    {
        return (AE_ERROR);
    }

    /*
     * If -p not specified, we will use the input filename as the
     * output filename prefix
     */
    if (AslGbl_UseDefaultAmlFilename)
    {
        AslGbl_OutputFilenamePrefix = AslGbl_Files[ASL_FILE_INPUT].Filename;
    }

    /*
     * Open the output file. Note: by default, the name of this file comes from
     * the table descriptor within the input file.
     */
    if (AslGbl_FileType == ASL_INPUT_TYPE_ASCII_ASL)
    {
        Event = FUNC19 ("Open AML output file");
        Status = FUNC13 (AslGbl_OutputFilenamePrefix);
        FUNC21 (Event);
        if (FUNC0 (Status))
        {
            FUNC2 (ASL_FILE_STDERR);
            return (AE_ERROR);
        }
    }

    /* Open the optional output files (listings, etc.) */

    Status = FUNC15 (AslGbl_OutputFilenamePrefix);
    if (FUNC0 (Status))
    {
        FUNC2 (ASL_FILE_STDERR);
        return (AE_ERROR);
    }

    /*
     * Compilation of ASL source versus DataTable source uses different
     * compiler subsystems
     */
    switch (AslGbl_FileType)
    {
    /*
     * Data Table Compilation
     */
    case ASL_INPUT_TYPE_ASCII_DATA:

        Status = FUNC8 ();
        if (FUNC0 (Status))
        {
            return (Status);
        }

        if (AslGbl_Signature)
        {
            AslGbl_Signature = NULL;
        }

        /* Check if any errors occurred during compile */

        Status = FUNC3 ();
        if (FUNC0 (Status))
        {
            return (Status);
        }

        /* Cleanup (for next source file) and exit */

        FUNC1 ();
        FUNC18 ();
        return (Status);

    /*
     * ASL Compilation
     */
    case ASL_INPUT_TYPE_ASCII_ASL:

        Status = FUNC7 ();
        if (FUNC0 (Status))
        {
            FUNC18 ();
            return (Status);
        }

        /*
         * At this point, we know how many lines are in the input file. Save it
         * to display for post-compilation summary.
         */
        FileNode->TotalLineCount = AslGbl_CurrentLineNumber;
        return (AE_OK);

    /*
     * Binary ACPI table was auto-detected, disassemble it
     */
    case ASL_INPUT_TYPE_BINARY_ACPI_TABLE:

        /* We have what appears to be an ACPI table, disassemble it */

        FUNC9 (ASL_FILE_INPUT);
        AslGbl_DoCompile = FALSE;
        AcpiGbl_DisasmFlag = TRUE;
        Status = FUNC5 ();
        return (Status);

    /* Unknown binary table */

    case ASL_INPUT_TYPE_BINARY:

        FUNC2 (ASL_FILE_STDERR);
        return (AE_ERROR);

    default:

        FUNC23 ("Unknown file type %X\n", AslGbl_FileType);
        return (AE_ERROR);
    }
}