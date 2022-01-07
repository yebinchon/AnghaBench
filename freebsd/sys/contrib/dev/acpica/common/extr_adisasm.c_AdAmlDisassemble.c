
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Next; int Table; } ;
struct TYPE_8__ {int OemTableId; } ;
typedef int FILE ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_NEW_TABLE_DESC ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_GET_ALL_TABLES ;
 int ACPI_SIG_DSDT ;
 int AE_ERROR ;
 int AE_OK ;
 int AcDeleteTableList (TYPE_2__*) ;
 int AcGetAllTablesFromFile (char*,int ,TYPE_2__**) ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_DmOpt_Disasm ;
 int AcpiGbl_ForceAmlDisassembly ;
 int * AcpiGbl_ParseOpRoot ;
 int AcpiGetTable (int ,int ,TYPE_1__**) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiOsRedirectOutput (int *) ;
 int AcpiPsDeleteParseTree (int *) ;
 int AcpiUtIsAmlTable (TYPE_1__*) ;
 int AdDisassembleOneTable (int ,int *,char*,char*) ;
 int AdDoExternalFileList (char*) ;
 char* AdGenerateFilename (char*,int ) ;
 int AdGetLocalTables () ;
 int FILE_SUFFIX_DISASSEMBLY ;
 char* FlGenerateFilename (char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int * stdout ;

ACPI_STATUS
AdAmlDisassemble (
    BOOLEAN OutToFile,
    char *Filename,
    char *Prefix,
    char **OutFilename)
{
    ACPI_STATUS Status;
    char *DisasmFilename = ((void*)0);
    FILE *File = ((void*)0);
    ACPI_TABLE_HEADER *Table = ((void*)0);
    ACPI_NEW_TABLE_DESC *ListHead = ((void*)0);






    if (Filename)
    {


        Status = AcGetAllTablesFromFile (Filename,
            ACPI_GET_ALL_TABLES, &ListHead);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not get ACPI tables from %s, %s\n",
                Filename, AcpiFormatException (Status));
            return (Status);
        }



        Status = AdDoExternalFileList (Filename);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }
    else
    {
        Status = AdGetLocalTables ();
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not get ACPI tables, %s\n",
                AcpiFormatException (Status));
            return (Status);
        }

        if (!AcpiGbl_DmOpt_Disasm)
        {
            return (AE_OK);
        }



        Status = AcpiGetTable (ACPI_SIG_DSDT, 0, &Table);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not get DSDT, %s\n",
                AcpiFormatException (Status));
            return (Status);
        }

        AcpiOsPrintf ("\nDisassembly of DSDT\n");
        Prefix = AdGenerateFilename ("dsdt", Table->OemTableId);
    }




    if (OutToFile)
    {


        DisasmFilename = FlGenerateFilename (Prefix, FILE_SUFFIX_DISASSEMBLY);
        if (!DisasmFilename)
        {
            fprintf (stderr, "Could not generate output filename\n");
            Status = AE_ERROR;
            goto Cleanup;
        }

        File = fopen (DisasmFilename, "w+");
        if (!File)
        {
            fprintf (stderr, "Could not open output file %s\n",
                DisasmFilename);
            Status = AE_ERROR;
            goto Cleanup;
        }

        AcpiOsRedirectOutput (File);
    }

    *OutFilename = DisasmFilename;



    while (ListHead)
    {
        Status = AdDisassembleOneTable (ListHead->Table,
            File, Filename, DisasmFilename);
        if (ACPI_FAILURE (Status))
        {
            break;
        }

        ListHead = ListHead->Next;
    }

Cleanup:

    if (Table &&
        !AcpiGbl_ForceAmlDisassembly &&
        !AcpiUtIsAmlTable (Table))
    {
        ACPI_FREE (Table);
    }

    AcDeleteTableList (ListHead);

    if (File)
    {
        fclose (File);
        AcpiOsRedirectOutput (stdout);
    }

    AcpiPsDeleteParseTree (AcpiGbl_ParseOpRoot);
    AcpiGbl_ParseOpRoot = ((void*)0);
    return (Status);
}
