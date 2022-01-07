
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TABLE_EVENT_UNLOAD ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AcpiGetTableByIndex (int ,int **) ;
 int AcpiTbDeleteNamespaceByOwner (int ) ;
 int AcpiTbIsTableLoaded (int ) ;
 int AcpiTbNotifyTable (int ,int *) ;
 int AcpiTbReleaseOwnerId (int ) ;
 int AcpiTbSetTableLoadedFlag (int ,int ) ;
 int FALSE ;
 int TbUnloadTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbUnloadTable (
    UINT32 TableIndex)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_TABLE_HEADER *Table;


    ACPI_FUNCTION_TRACE (TbUnloadTable);




    if (!AcpiTbIsTableLoaded (TableIndex))
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }



    Status = AcpiGetTableByIndex (TableIndex, &Table);
    if (ACPI_SUCCESS (Status))
    {
        AcpiTbNotifyTable (ACPI_TABLE_EVENT_UNLOAD, Table);
    }



    Status = AcpiTbDeleteNamespaceByOwner (TableIndex);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    (void) AcpiTbReleaseOwnerId (TableIndex);
    AcpiTbSetTableLoadedFlag (TableIndex, FALSE);
    return_ACPI_STATUS (Status);
}
