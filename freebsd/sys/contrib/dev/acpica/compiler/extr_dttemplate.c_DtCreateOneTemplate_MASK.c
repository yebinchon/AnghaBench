#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/  Template; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_DMTABLE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_RSDP_NAME ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 int /*<<< orphan*/  ACPI_SIG_OSDT ; 
 int /*<<< orphan*/  ACPI_SIG_SSDT ; 
 int /*<<< orphan*/  ACPI_TABLE_HEADER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ AslGbl_VerboseTemplates ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FILE_SUFFIX_ASL_CODE ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TemplateFacs ; 
 int /*<<< orphan*/  TemplateRsdp ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static ACPI_STATUS
FUNC13 (
    char                    *Signature,
    UINT32                  TableCount,
    const ACPI_DMTABLE_DATA  *TableData)
{
    char                    *DisasmFilename;
    FILE                    *File;
    ACPI_STATUS             Status = AE_OK;
    int                     Actual;
    UINT32                  i;


    /* New file will have a .asl suffix */

    DisasmFilename = FUNC8 (
        Signature, FILE_SUFFIX_ASL_CODE);
    if (!DisasmFilename)
    {
        FUNC12 (stderr, "Could not generate output filename\n");
        return (AE_ERROR);
    }

    FUNC6 (DisasmFilename);
    if (!FUNC9 (DisasmFilename))
    {
        return (AE_OK);
    }

    File = FUNC11 (DisasmFilename, "w+");
    if (!File)
    {
        FUNC12 (stderr, "Could not open output file %s\n",
            DisasmFilename);
        return (AE_ERROR);
    }

    /* Emit the common file header */

    FUNC5 (File);

    FUNC4 ("/*\n");
    FUNC4 (FUNC1 ("iASL Compiler/Disassembler", " * "));

    if (TableCount == 0)
    {
        FUNC4 (" * Template for [%4.4s] ACPI Table",
            Signature);
    }
    else
    {
        FUNC4 (" * Template for [%4.4s] and %u [SSDT] ACPI Tables",
            Signature, TableCount);
    }

    /* Dump the actual ACPI table */

    if (TableData)
    {
        /* Normal case, tables that appear in AcpiDmTableData */

        FUNC4 (" (static data table)\n");

        if (AslGbl_VerboseTemplates)
        {
            FUNC4 (" * Format: [HexOffset DecimalOffset ByteLength]"
                "  FieldName : HexFieldValue\n */\n\n");
        }
        else
        {
            FUNC4 (" * Format: [ByteLength]"
                "  FieldName : HexFieldValue\n */\n");
        }

        FUNC3 (FUNC0 (ACPI_TABLE_HEADER,
            TableData->Template));
    }
    else
    {
        /* Special ACPI tables - DSDT, SSDT, OSDT, FACS, RSDP */

        FUNC4 (" (AML byte code table)\n");
        FUNC4 (" */\n");

        if (FUNC2 (Signature, ACPI_SIG_DSDT))
        {
            Actual = FUNC7 (
                File, DisasmFilename, ACPI_SIG_DSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }

            /* Emit any requested SSDTs into the same file */

            for (i = 1; i <= TableCount; i++)
            {
                Actual = FUNC7 (
                    File, DisasmFilename, ACPI_SIG_SSDT, i + 1);
                if (Actual < 0)
                {
                    Status = AE_ERROR;
                    goto Cleanup;
                }
            }
        }
        else if (FUNC2 (Signature, ACPI_SIG_SSDT))
        {
            Actual = FUNC7 (
                File, DisasmFilename, ACPI_SIG_SSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }
        }
        else if (FUNC2 (Signature, ACPI_SIG_OSDT))
        {
            Actual = FUNC7 (
                File, DisasmFilename, ACPI_SIG_OSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }
        }
        else if (FUNC2 (Signature, ACPI_SIG_FACS))
        {
            FUNC3 (FUNC0 (ACPI_TABLE_HEADER,
                TemplateFacs));
        }
        else if (FUNC2 (Signature, ACPI_RSDP_NAME))
        {
            FUNC3 (FUNC0 (ACPI_TABLE_HEADER,
                TemplateRsdp));
        }
        else
        {
            FUNC12 (stderr,
                "%4.4s, Unrecognized ACPI table signature\n", Signature);
            Status = AE_ERROR;
            goto Cleanup;
        }
    }

    if (TableCount == 0)
    {
        FUNC12 (stderr,
            "Created ACPI table template for [%4.4s], "
            "written to \"%s\"\n",
            Signature, DisasmFilename);
    }
    else
    {
        FUNC12 (stderr,
            "Created ACPI table templates for [%4.4s] "
            "and %u [SSDT], written to \"%s\"\n",
            Signature, TableCount, DisasmFilename);
    }

Cleanup:
    FUNC10 (File);
    FUNC5 (stdout);
    return (Status);
}