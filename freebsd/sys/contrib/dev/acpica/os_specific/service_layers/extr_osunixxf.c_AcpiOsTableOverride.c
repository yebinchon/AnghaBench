
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 int AE_BAD_PARAMETER ;
 int AE_NO_ACPI_TABLES ;
 int AE_OK ;
 int AeTableOverride (int *,int **) ;

ACPI_STATUS
AcpiOsTableOverride (
    ACPI_TABLE_HEADER *ExistingTable,
    ACPI_TABLE_HEADER **NewTable)
{

    if (!ExistingTable || !NewTable)
    {
        return (AE_BAD_PARAMETER);
    }

    *NewTable = ((void*)0);







    return (AE_NO_ACPI_TABLES);

}
