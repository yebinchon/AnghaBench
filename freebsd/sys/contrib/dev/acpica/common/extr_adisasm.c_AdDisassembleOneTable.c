
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* ShortDescription; } ;
struct TYPE_11__ {char* Filename; } ;
struct TYPE_10__ {char* Signature; } ;
typedef int FILE ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_IS_DATA_TABLE ;
 int ACPI_NAMESEG_SIZE ;
 int AE_OK ;
 size_t ASL_FILE_MAP_OUTPUT ;
 int AcpiDmConvertParseObjects (int ,int ) ;
 int AcpiDmCrossReferenceNamespace (int ,int ,int ) ;
 int AcpiDmDumpDataTable (TYPE_1__*) ;
 int AcpiDmDumpTree (int ) ;
 int AcpiDmFindOrphanMethods (int ) ;
 int AcpiDmFinishNamespaceLoad (int ,int ,int ) ;
 scalar_t__ AcpiDmGetUnresolvedExternalMethodCount () ;
 int AcpiFormatException (int ) ;
 scalar_t__ AcpiGbl_CaptureComments ;
 scalar_t__ AcpiGbl_DmOpt_Disasm ;
 int AcpiGbl_ForceAmlDisassembly ;
 int AcpiGbl_ParseOpRoot ;
 int AcpiGbl_RootNode ;
 int AcpiGbl_TableSig ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtIsAmlTable (TYPE_1__*) ;
 int AdDisassemblerHeader (char*,int ) ;
 int AdDisplayTables (char*,TYPE_1__*) ;
 int AdParseTable (TYPE_1__*,int *,int ,int ) ;
 int AdReparseOneTable (TYPE_1__*,int *,int ) ;
 scalar_t__ AslCompilerdebug ;
 TYPE_3__* AslGbl_FileDescs ;
 TYPE_2__* AslGbl_Files ;
 scalar_t__ AslGbl_MapfileFlag ;
 int CmGetFileSize (int *) ;
 int FALSE ;
 int FlGetFileSize (size_t) ;
 int NsDisplayNamespace () ;
 int NsSetupNamespaceListing (int *) ;
 int TRUE ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static ACPI_STATUS
AdDisassembleOneTable (
    ACPI_TABLE_HEADER *Table,
    FILE *File,
    char *Filename,
    char *DisasmFilename)
{
    ACPI_STATUS Status;
    ACPI_OWNER_ID OwnerId;
    if (!AcpiGbl_ForceAmlDisassembly && !AcpiUtIsAmlTable (Table))
    {
        AdDisassemblerHeader (Filename, ACPI_IS_DATA_TABLE);



        AcpiOsPrintf (" * ACPI Data Table [%4.4s]\n *\n",
            Table->Signature);
        AcpiOsPrintf (" * Format: [HexOffset DecimalOffset ByteLength]  "
            "FieldName : FieldValue\n */\n\n");

        AcpiDmDumpDataTable (Table);
        fprintf (stderr, "Acpi Data Table [%4.4s] decoded\n",
            Table->Signature);

        if (File)
        {
            fprintf (stderr, "Formatted output:  %s - %u bytes\n",
                DisasmFilename, CmGetFileSize (File));
        }

        return (AE_OK);
    }





    Status = AdParseTable (Table, &OwnerId, TRUE, FALSE);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not parse ACPI tables, %s\n",
            AcpiFormatException (Status));
        return (Status);
    }



    if (AslCompilerdebug && File)
    {
        AcpiOsPrintf ("/**** Before second load\n");

        NsSetupNamespaceListing (File);
        NsDisplayNamespace ();

        AcpiOsPrintf ("*****/\n");
    }



    AcpiDmFinishNamespaceLoad (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);





    AcpiDmCrossReferenceNamespace (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    if (AslCompilerdebug)
    {
        AcpiDmDumpTree (AcpiGbl_ParseOpRoot);
    }



    AcpiDmFindOrphanMethods (AcpiGbl_ParseOpRoot);






    if (AcpiDmGetUnresolvedExternalMethodCount ())
    {
        Status = AdReparseOneTable (Table, File, OwnerId);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }
    AcpiDmConvertParseObjects (AcpiGbl_ParseOpRoot, AcpiGbl_RootNode);



    if (AcpiGbl_DmOpt_Disasm)
    {


        AdDisplayTables (Filename, Table);



        AcpiDmDumpDataTable (Table);

        fprintf (stderr, "Disassembly completed\n");
        if (File)
        {
            fprintf (stderr, "ASL Output:    %s - %u bytes\n",
                DisasmFilename, CmGetFileSize (File));
        }

        if (AslGbl_MapfileFlag)
        {
            fprintf (stderr, "%14s %s - %u bytes\n",
                AslGbl_FileDescs[ASL_FILE_MAP_OUTPUT].ShortDescription,
                AslGbl_Files[ASL_FILE_MAP_OUTPUT].Filename,
                FlGetFileSize (ASL_FILE_MAP_OUTPUT));
        }
    }

    return (AE_OK);
}
