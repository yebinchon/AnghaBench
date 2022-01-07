
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* Path; struct TYPE_7__* Next; } ;
struct TYPE_6__ {struct TYPE_6__* Next; int Table; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;
typedef TYPE_1__ ACPI_NEW_TABLE_DESC ;
typedef TYPE_2__ ACPI_EXTERNAL_FILE ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_GET_ONLY_AML_TABLES ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TYPE ;
 int AcDeleteTableList (TYPE_1__*) ;
 scalar_t__ AcGetAllTablesFromFile (char*,int ,TYPE_1__**) ;
 int AcpiDmClearExternalList () ;
 int AcpiDmFinishNamespaceLoad (int ,int ,int ) ;
 int AcpiDmGetExternalsFromFile () ;
 char* AcpiFormatException (scalar_t__) ;
 TYPE_2__* AcpiGbl_ExternalFileList ;
 int AcpiGbl_ParseOpRoot ;
 int AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*,char*) ;
 int AcpiPsDeleteParseTree (int ) ;
 scalar_t__ AdParseTable (int ,int *,int ,int ) ;
 int TRUE ;
 int strcmp (char*,char*) ;

__attribute__((used)) static ACPI_STATUS
AdDoExternalFileList (
    char *Filename)
{
    ACPI_EXTERNAL_FILE *ExternalFileList;
    char *ExternalFilename;
    ACPI_NEW_TABLE_DESC *ExternalListHead = ((void*)0);
    ACPI_STATUS Status;
    ACPI_STATUS GlobalStatus = AE_OK;
    ACPI_OWNER_ID OwnerId;






    ExternalFileList = AcpiGbl_ExternalFileList;



    while (ExternalFileList)
    {
        ExternalFilename = ExternalFileList->Path;
        if (!strcmp (ExternalFilename, Filename))
        {


            ExternalFileList = ExternalFileList->Next;
            continue;
        }

        AcpiOsPrintf ("External object resolution file %16s\n",
            ExternalFilename);

        Status = AcGetAllTablesFromFile (
            ExternalFilename, ACPI_GET_ONLY_AML_TABLES, &ExternalListHead);
        if (ACPI_FAILURE (Status))
        {
            if (Status == AE_TYPE)
            {
                ExternalFileList = ExternalFileList->Next;
                GlobalStatus = AE_TYPE;
                continue;
            }

            AcDeleteTableList (ExternalListHead);
            return (Status);
        }



        while (ExternalListHead)
        {
            Status = AdParseTable (
                ExternalListHead->Table, &OwnerId, TRUE, TRUE);
            if (ACPI_FAILURE (Status))
            {
                AcpiOsPrintf ("Could not parse external ACPI tables, %s\n",
                    AcpiFormatException (Status));
                AcDeleteTableList (ExternalListHead);
                return (Status);
            }





            AcpiDmFinishNamespaceLoad (AcpiGbl_ParseOpRoot,
                AcpiGbl_RootNode, OwnerId);
            AcpiPsDeleteParseTree (AcpiGbl_ParseOpRoot);

            ExternalListHead = ExternalListHead->Next;
        }



        ExternalFileList = ExternalFileList->Next;
    }

    AcDeleteTableList (ExternalListHead);

    if (ACPI_FAILURE (GlobalStatus))
    {
        return (GlobalStatus);
    }



    if (AcpiGbl_ExternalFileList)
    {
        AcpiDmClearExternalList ();
    }



    AcpiDmGetExternalsFromFile ();
    return (AE_OK);
}
