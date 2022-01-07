
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_DESC ;


 int AcpiTbInvalidateTable (int *) ;

void
AcpiTbReleaseTempTable (
    ACPI_TABLE_DESC *TableDesc)
{






    AcpiTbInvalidateTable (TableDesc);
}
