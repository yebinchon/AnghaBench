
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PTR_TO_PHYSADDR (int *) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ;
 int AcpiTbGetNextTableDescriptor (int *,int **) ;
 int AcpiTbInitTableDescriptor (int *,int ,int ,int *) ;
 int AcpiTbValidateTable (int *) ;

__attribute__((used)) static ACPI_STATUS
AdStoreTable (
    ACPI_TABLE_HEADER *Table,
    UINT32 *TableIndex)
{
    ACPI_STATUS Status;
    ACPI_TABLE_DESC *TableDesc;


    Status = AcpiTbGetNextTableDescriptor (TableIndex, &TableDesc);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    AcpiTbInitTableDescriptor (TableDesc, ACPI_PTR_TO_PHYSADDR (Table),
        ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL, Table);
    Status = AcpiTbValidateTable (TableDesc);
    return (Status);
}
