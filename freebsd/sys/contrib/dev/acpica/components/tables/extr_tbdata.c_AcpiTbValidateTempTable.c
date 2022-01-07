
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; int Pointer; } ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 int AcpiGbl_EnableTableValidation ;
 int AcpiTbValidateTable (TYPE_1__*) ;

ACPI_STATUS
AcpiTbValidateTempTable (
    ACPI_TABLE_DESC *TableDesc)
{

    if (!TableDesc->Pointer && !AcpiGbl_EnableTableValidation)
    {
        TableDesc->Length = sizeof (ACPI_TABLE_HEADER);
    }

    return (AcpiTbValidateTable (TableDesc));
}
