
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int ACPI_TABLE_HEADER ;





 int ACPI_TABLE_ORIGIN_MASK ;
 int AcpiOsUnmapMemory (int *,int ) ;

void
AcpiTbReleaseTable (
    ACPI_TABLE_HEADER *Table,
    UINT32 TableLength,
    UINT8 TableFlags)
{

    switch (TableFlags & ACPI_TABLE_ORIGIN_MASK)
    {
    case 129:

        AcpiOsUnmapMemory (Table, TableLength);
        break;

    case 128:
    case 130:
    default:

        break;
    }
}
