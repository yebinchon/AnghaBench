
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef int ACPI_PREDEFINED_NAMES ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;

ACPI_STATUS
AcpiOsPredefinedOverride (
    const ACPI_PREDEFINED_NAMES *InitVal,
    ACPI_STRING *NewVal)
{

    if (!InitVal || !NewVal)
    {
        return (AE_BAD_PARAMETER);
    }

    *NewVal = ((void*)0);
    return (AE_OK);
}
