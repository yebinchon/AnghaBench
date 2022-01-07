
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int Template; } ;
typedef int FILE ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_DMTABLE_DATA ;


 int ACPI_CAST_PTR (int ,int ) ;
 char* ACPI_COMMON_HEADER (char*,char*) ;
 scalar_t__ ACPI_COMPARE_NAMESEG (char*,int ) ;
 int ACPI_RSDP_NAME ;
 int ACPI_SIG_DSDT ;
 int ACPI_SIG_FACS ;
 int ACPI_SIG_OSDT ;
 int ACPI_SIG_SSDT ;
 int ACPI_TABLE_HEADER ;
 int AE_ERROR ;
 int AE_OK ;
 int AcpiDmDumpDataTable (int ) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiOsRedirectOutput (int *) ;
 int AcpiUtStrlwr (char*) ;
 scalar_t__ AslGbl_VerboseTemplates ;
 int DtEmitDefinitionBlock (int *,char*,int ,int) ;
 int FILE_SUFFIX_ASL_CODE ;
 char* FlGenerateFilename (char*,int ) ;
 int TemplateFacs ;
 int TemplateRsdp ;
 int UtQueryForOverwrite (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static ACPI_STATUS
DtCreateOneTemplate (
    char *Signature,
    UINT32 TableCount,
    const ACPI_DMTABLE_DATA *TableData)
{
    char *DisasmFilename;
    FILE *File;
    ACPI_STATUS Status = AE_OK;
    int Actual;
    UINT32 i;




    DisasmFilename = FlGenerateFilename (
        Signature, FILE_SUFFIX_ASL_CODE);
    if (!DisasmFilename)
    {
        fprintf (stderr, "Could not generate output filename\n");
        return (AE_ERROR);
    }

    AcpiUtStrlwr (DisasmFilename);
    if (!UtQueryForOverwrite (DisasmFilename))
    {
        return (AE_OK);
    }

    File = fopen (DisasmFilename, "w+");
    if (!File)
    {
        fprintf (stderr, "Could not open output file %s\n",
            DisasmFilename);
        return (AE_ERROR);
    }



    AcpiOsRedirectOutput (File);

    AcpiOsPrintf ("/*\n");
    AcpiOsPrintf (ACPI_COMMON_HEADER ("iASL Compiler/Disassembler", " * "));

    if (TableCount == 0)
    {
        AcpiOsPrintf (" * Template for [%4.4s] ACPI Table",
            Signature);
    }
    else
    {
        AcpiOsPrintf (" * Template for [%4.4s] and %u [SSDT] ACPI Tables",
            Signature, TableCount);
    }



    if (TableData)
    {


        AcpiOsPrintf (" (static data table)\n");

        if (AslGbl_VerboseTemplates)
        {
            AcpiOsPrintf (" * Format: [HexOffset DecimalOffset ByteLength]"
                "  FieldName : HexFieldValue\n */\n\n");
        }
        else
        {
            AcpiOsPrintf (" * Format: [ByteLength]"
                "  FieldName : HexFieldValue\n */\n");
        }

        AcpiDmDumpDataTable (ACPI_CAST_PTR (ACPI_TABLE_HEADER,
            TableData->Template));
    }
    else
    {


        AcpiOsPrintf (" (AML byte code table)\n");
        AcpiOsPrintf (" */\n");

        if (ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_DSDT))
        {
            Actual = DtEmitDefinitionBlock (
                File, DisasmFilename, ACPI_SIG_DSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }



            for (i = 1; i <= TableCount; i++)
            {
                Actual = DtEmitDefinitionBlock (
                    File, DisasmFilename, ACPI_SIG_SSDT, i + 1);
                if (Actual < 0)
                {
                    Status = AE_ERROR;
                    goto Cleanup;
                }
            }
        }
        else if (ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_SSDT))
        {
            Actual = DtEmitDefinitionBlock (
                File, DisasmFilename, ACPI_SIG_SSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }
        }
        else if (ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_OSDT))
        {
            Actual = DtEmitDefinitionBlock (
                File, DisasmFilename, ACPI_SIG_OSDT, 1);
            if (Actual < 0)
            {
                Status = AE_ERROR;
                goto Cleanup;
            }
        }
        else if (ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_FACS))
        {
            AcpiDmDumpDataTable (ACPI_CAST_PTR (ACPI_TABLE_HEADER,
                TemplateFacs));
        }
        else if (ACPI_COMPARE_NAMESEG (Signature, ACPI_RSDP_NAME))
        {
            AcpiDmDumpDataTable (ACPI_CAST_PTR (ACPI_TABLE_HEADER,
                TemplateRsdp));
        }
        else
        {
            fprintf (stderr,
                "%4.4s, Unrecognized ACPI table signature\n", Signature);
            Status = AE_ERROR;
            goto Cleanup;
        }
    }

    if (TableCount == 0)
    {
        fprintf (stderr,
            "Created ACPI table template for [%4.4s], "
            "written to \"%s\"\n",
            Signature, DisasmFilename);
    }
    else
    {
        fprintf (stderr,
            "Created ACPI table templates for [%4.4s] "
            "and %u [SSDT], written to \"%s\"\n",
            Signature, TableCount, DisasmFilename);
    }

Cleanup:
    fclose (File);
    AcpiOsRedirectOutput (stdout);
    return (Status);
}
