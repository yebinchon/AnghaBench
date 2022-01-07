
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_RESOURCE_NAME_LARGE ;
 int ACPI_RESOURCE_NAME_SMALL_MASK ;

UINT8
AcpiUtGetResourceType (
    void *Aml)
{
    ACPI_FUNCTION_ENTRY ();






    if (ACPI_GET8 (Aml) & ACPI_RESOURCE_NAME_LARGE)
    {


        return (ACPI_GET8 (Aml));
    }
    else
    {


        return ((UINT8) (ACPI_GET8 (Aml) & ACPI_RESOURCE_NAME_SMALL_MASK));
    }
}
