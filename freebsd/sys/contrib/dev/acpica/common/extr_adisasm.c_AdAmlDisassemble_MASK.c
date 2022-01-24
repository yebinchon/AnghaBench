#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* Next; int /*<<< orphan*/  Table; } ;
struct TYPE_8__ {int /*<<< orphan*/  OemTableId; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_NEW_TABLE_DESC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ACPI_GET_ALL_TABLES ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_DmOpt_Disasm ; 
 int /*<<< orphan*/  AcpiGbl_ForceAmlDisassembly ; 
 int /*<<< orphan*/ * AcpiGbl_ParseOpRoot ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FILE_SUFFIX_DISASSEMBLY ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

ACPI_STATUS
FUNC18 (
    BOOLEAN                 OutToFile,
    char                    *Filename,
    char                    *Prefix,
    char                    **OutFilename)
{
    ACPI_STATUS             Status;
    char                    *DisasmFilename = NULL;
    FILE                    *File = NULL;
    ACPI_TABLE_HEADER       *Table = NULL;
    ACPI_NEW_TABLE_DESC     *ListHead = NULL;


    /*
     * Input: AML code from either a file or via GetTables (memory or
     * registry)
     */
    if (Filename)
    {
        /* Get the list of all AML tables in the file */

        Status = FUNC3 (Filename,
            ACPI_GET_ALL_TABLES, &ListHead);
        if (FUNC0 (Status))
        {
            FUNC6 ("Could not get ACPI tables from %s, %s\n",
                Filename, FUNC4 (Status));
            return (Status);
        }

        /* Process any user-specified files for external objects */

        Status = FUNC11 (Filename);
        if (FUNC0 (Status))
        {
            return (Status);
        }
    }
    else
    {
        Status = FUNC13 ();
        if (FUNC0 (Status))
        {
            FUNC6 ("Could not get ACPI tables, %s\n",
                FUNC4 (Status));
            return (Status);
        }

        if (!AcpiGbl_DmOpt_Disasm)
        {
            return (AE_OK);
        }

        /* Obtained the local tables, just disassemble the DSDT */

        Status = FUNC5 (ACPI_SIG_DSDT, 0, &Table);
        if (FUNC0 (Status))
        {
            FUNC6 ("Could not get DSDT, %s\n",
                FUNC4 (Status));
            return (Status);
        }

        FUNC6 ("\nDisassembly of DSDT\n");
        Prefix = FUNC12 ("dsdt", Table->OemTableId);
    }

    /*
     * Output: ASL code. Redirect to a file if requested
     */
    if (OutToFile)
    {
        /* Create/Open a disassembly output file */

        DisasmFilename = FUNC14 (Prefix, FILE_SUFFIX_DISASSEMBLY);
        if (!DisasmFilename)
        {
            FUNC17 (stderr, "Could not generate output filename\n");
            Status = AE_ERROR;
            goto Cleanup;
        }

        File = FUNC16 (DisasmFilename, "w+");
        if (!File)
        {
            FUNC17 (stderr, "Could not open output file %s\n",
                DisasmFilename);
            Status = AE_ERROR;
            goto Cleanup;
        }

        FUNC7 (File);
    }

    *OutFilename = DisasmFilename;

    /* Disassemble all AML tables within the file */

    while (ListHead)
    {
        Status = FUNC10 (ListHead->Table,
            File, Filename, DisasmFilename);
        if (FUNC0 (Status))
        {
            break;
        }

        ListHead = ListHead->Next;
    }

Cleanup:

    if (Table &&
        !AcpiGbl_ForceAmlDisassembly &&
        !FUNC9 (Table))
    {
        FUNC1 (Table);
    }

    FUNC2 (ListHead);

    if (File)
    {
        FUNC15 (File);
        FUNC7 (stdout);
    }

    FUNC8 (AcpiGbl_ParseOpRoot);
    AcpiGbl_ParseOpRoot = NULL;
    return (Status);
}