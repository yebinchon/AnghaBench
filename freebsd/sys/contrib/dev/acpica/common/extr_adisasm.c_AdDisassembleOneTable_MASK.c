#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* ShortDescription; } ;
struct TYPE_11__ {char* Filename; } ;
struct TYPE_10__ {char* Signature; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IS_DATA_TABLE ; 
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_OK ; 
 size_t ASL_FILE_MAP_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_CaptureComments ; 
 scalar_t__ AcpiGbl_DmOpt_Disasm ; 
 int /*<<< orphan*/  AcpiGbl_ForceAmlDisassembly ; 
 int /*<<< orphan*/  AcpiGbl_ParseOpRoot ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/  AcpiGbl_TableSig ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ AslCompilerdebug ; 
 TYPE_3__* AslGbl_FileDescs ; 
 TYPE_2__* AslGbl_Files ; 
 scalar_t__ AslGbl_MapfileFlag ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC16 (size_t) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC21 (
    ACPI_TABLE_HEADER       *Table,
    FILE                    *File,
    char                    *Filename,
    char                    *DisasmFilename)
{
    ACPI_STATUS             Status;
    ACPI_OWNER_ID           OwnerId;


#ifdef ACPI_ASL_COMPILER

    /*
     * For ASL-/ASL+ converter: replace the temporary "XXXX"
     * table signature with the original. This "XXXX" makes
     * it harder for the AML interpreter to run the badaml
     * (.xxx) file produced from the converter in case if
     * it fails to get deleted.
     */
    if (AcpiGbl_CaptureComments)
    {
        strncpy (Table->Signature, AcpiGbl_TableSig, ACPI_NAMESEG_SIZE);
    }
#endif

    /* ForceAmlDisassembly means to assume the table contains valid AML */

    if (!AcpiGbl_ForceAmlDisassembly && !FUNC10 (Table))
    {
        FUNC11 (Filename, ACPI_IS_DATA_TABLE);

        /* This is a "Data Table" (non-AML table) */

        FUNC9 (" * ACPI Data Table [%4.4s]\n *\n",
            Table->Signature);
        FUNC9 (" * Format: [HexOffset DecimalOffset ByteLength]  "
            "FieldName : FieldValue\n */\n\n");

        FUNC3 (Table);
        FUNC19 (stderr, "Acpi Data Table [%4.4s] decoded\n",
            Table->Signature);

        if (File)
        {
            FUNC19 (stderr, "Formatted output:  %s - %u bytes\n",
                DisasmFilename, FUNC15 (File));
        }

        return (AE_OK);
    }

    /*
     * This is an AML table (DSDT or SSDT).
     * Always parse the tables, only option is what to display
     */
    Status = FUNC13 (Table, &OwnerId, TRUE, FALSE);
    if (FUNC0 (Status))
    {
        FUNC9 ("Could not parse ACPI tables, %s\n",
            FUNC8 (Status));
        return (Status);
    }

    /* Debug output, namespace and parse tree */

    if (AslCompilerdebug && File)
    {
        FUNC9 ("/**** Before second load\n");

        FUNC18 (File);
        FUNC17 ();

        FUNC9 ("*****/\n");
    }

    /* Load namespace from names created within control methods */

    FUNC6 (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    /*
     * Cross reference the namespace here, in order to
     * generate External() statements
     */
    FUNC2 (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    if (AslCompilerdebug)
    {
        FUNC4 (AcpiGbl_ParseOpRoot);
    }

    /* Find possible calls to external control methods */

    FUNC5 (AcpiGbl_ParseOpRoot);

    /*
     * If we found any external control methods, we must reparse
     * the entire tree with the new information (namely, the
     * number of arguments per method)
     */
    if (FUNC7 ())
    {
        Status = FUNC14 (Table, File, OwnerId);
        if (FUNC0 (Status))
        {
            return (Status);
        }
    }

    /*
     * Now that the namespace is finalized, we can perform namespace
     * transforms.
     *
     * 1) Convert fixed-offset references to resource descriptors
     *    to symbolic references (Note: modifies namespace)
     */
    FUNC1 (AcpiGbl_ParseOpRoot, AcpiGbl_RootNode);

    /* Optional displays */

    if (AcpiGbl_DmOpt_Disasm)
    {
        /* This is the real disassembly */

        FUNC12 (Filename, Table);

        /* Dump hex table if requested (-vt) */

        FUNC3 (Table);

        FUNC19 (stderr, "Disassembly completed\n");
        if (File)
        {
            FUNC19 (stderr, "ASL Output:    %s - %u bytes\n",
                DisasmFilename, FUNC15 (File));
        }

        if (AslGbl_MapfileFlag)
        {
            FUNC19 (stderr, "%14s %s - %u bytes\n",
                AslGbl_FileDescs[ASL_FILE_MAP_OUTPUT].ShortDescription,
                AslGbl_Files[ASL_FILE_MAP_OUTPUT].Filename,
                FUNC16 (ASL_FILE_MAP_OUTPUT));
        }
    }

    return (AE_OK);
}