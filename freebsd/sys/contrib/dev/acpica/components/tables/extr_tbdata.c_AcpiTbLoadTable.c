
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TABLE_EVENT_LOAD ;
 int AcpiEvUpdateGpes (int ) ;
 int AcpiGetTableByIndex (int ,int **) ;
 int AcpiNsLoadTable (int ,int *) ;
 int AcpiTbGetOwnerId (int ,int *) ;
 int AcpiTbNotifyTable (int ,int *) ;
 int TbLoadTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbLoadTable (
    UINT32 TableIndex,
    ACPI_NAMESPACE_NODE *ParentNode)
{
    ACPI_TABLE_HEADER *Table;
    ACPI_STATUS Status;
    ACPI_OWNER_ID OwnerId;


    ACPI_FUNCTION_TRACE (TbLoadTable);






    Status = AcpiGetTableByIndex (TableIndex, &Table);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiNsLoadTable (TableIndex, ParentNode);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }






    Status = AcpiTbGetOwnerId (TableIndex, &OwnerId);
    if (ACPI_SUCCESS (Status))
    {
        AcpiEvUpdateGpes (OwnerId);
    }



    AcpiTbNotifyTable (ACPI_TABLE_EVENT_LOAD, Table);
    return_ACPI_STATUS (Status);
}
