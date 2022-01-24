#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_10__ {char* TableSignature; char* TableId; } ;
struct TYPE_7__ {char* String; scalar_t__* Buffer; } ;
struct TYPE_8__ {void* ParseOpcode; TYPE_3__* Next; TYPE_1__ Value; int /*<<< orphan*/  Filename; TYPE_3__* Child; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 scalar_t__ ACPI_OEM_ID_SIZE ; 
 int ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 int /*<<< orphan*/  ASL_MSG_OEM_ID ; 
 int /*<<< orphan*/  ASL_MSG_OEM_TABLE_ID ; 
 int /*<<< orphan*/  ASL_MSG_OUTPUT_FILE_OPEN ; 
 int /*<<< orphan*/  ASL_MSG_TABLE_SIGNATURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 char* AslGbl_DirectoryPath ; 
 TYPE_5__* AslGbl_FilesList ; 
 char* AslGbl_OutputFilenamePrefix ; 
 char* AslGbl_TableId ; 
 char* AslGbl_TableSignature ; 
 scalar_t__ AslGbl_UseDefaultAmlFilename ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* PARSEOP_DEFAULT_ARG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12 (
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_PARSE_OBJECT       *Child;
    ACPI_SIZE               Length;
    UINT32                  i;
    char                    *Filename;
    ACPI_STATUS             Status;


    /*
     * These nodes get stuffed into the table header. They are special
     * cased when the table is written to the output file.
     *
     * Mark all of these nodes as non-usable so they won't get output
     * as AML opcodes!
     */

    /* Get AML filename. Use it if non-null */

    Child = Op->Asl.Child;
    if (Child->Asl.Value.Buffer  &&
        *Child->Asl.Value.Buffer &&
        (AslGbl_UseDefaultAmlFilename))
    {
        /*
         * The walk may traverse multiple definition blocks. Switch files
         * to ensure that the correct files are manipulated.
         */
        FUNC5 (Op->Asl.Filename);

        /*
         * We will use the AML filename that is embedded in the source file
         * for the output filename.
         */
        Filename = FUNC7 (FUNC11 (AslGbl_DirectoryPath) +
            FUNC11 ((char *) Child->Asl.Value.Buffer) + 1);

        /* Prepend the current directory path */

        FUNC10 (Filename, AslGbl_DirectoryPath);
        FUNC9 (Filename, (char *) Child->Asl.Value.Buffer);

        AslGbl_OutputFilenamePrefix = Filename;
        FUNC6 (AslGbl_OutputFilenamePrefix);

        /*
         * Use the definition block file parameter instead of the input
         * filename. Since all files were opened previously, remove the
         * existing file and open a new file with the name of this
         * definiton block parameter. Since AML code generation has yet
         * to happen, the previous file can be removed without any impacts.
         */
        FUNC2 (ASL_FILE_AML_OUTPUT);
        FUNC3 (ASL_FILE_AML_OUTPUT);
        Status = FUNC4 (AslGbl_OutputFilenamePrefix);
        if (FUNC0 (Status))
        {
            FUNC1 (ASL_ERROR, ASL_MSG_OUTPUT_FILE_OPEN, NULL, NULL);
            return;
        }
    }

    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;

    /* Signature */

    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String)
    {
        AslGbl_FilesList->TableSignature = Child->Asl.Value.String;
        AslGbl_TableSignature = Child->Asl.Value.String;
        if (FUNC11 (AslGbl_TableSignature) != ACPI_NAMESEG_SIZE)
        {
            FUNC1 (ASL_ERROR, ASL_MSG_TABLE_SIGNATURE, Child,
                "Length must be exactly 4 characters");
        }

        for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
        {
            if (!FUNC8 ((int) AslGbl_TableSignature[i]))
            {
                FUNC1 (ASL_ERROR, ASL_MSG_TABLE_SIGNATURE, Child,
                    "Contains non-alphanumeric characters");
            }
        }
    }

    /* Revision */

    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;

    /*
     * We used the revision to set the integer width earlier
     */

    /* OEMID */

    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String &&
        FUNC11 (Child->Asl.Value.String) > ACPI_OEM_ID_SIZE)
    {
        FUNC1 (ASL_ERROR, ASL_MSG_OEM_ID, Child,
            "Length cannot exceed 6 characters");
    }

    /* OEM TableID */

    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String)
    {
        Length = FUNC11 (Child->Asl.Value.String);
        if (Length > ACPI_OEM_TABLE_ID_SIZE)
        {
            FUNC1 (ASL_ERROR, ASL_MSG_OEM_TABLE_ID, Child,
                "Length cannot exceed 8 characters");
        }

        AslGbl_TableId = FUNC7 (Length + 1);
        FUNC10 (AslGbl_TableId, Child->Asl.Value.String);
        AslGbl_FilesList->TableId = AslGbl_TableId;

        /*
         * Convert anything non-alphanumeric to an underscore. This
         * allows us to use the TableID to generate unique C symbols.
         */
        for (i = 0; i < Length; i++)
        {
            if (!FUNC8 ((int) AslGbl_TableId[i]))
            {
                AslGbl_TableId[i] = '_';
            }
        }
    }

    /* OEM Revision */

    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
}