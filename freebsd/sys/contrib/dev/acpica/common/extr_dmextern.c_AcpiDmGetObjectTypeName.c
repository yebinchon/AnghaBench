
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ACPI_OBJECT_TYPE ;


 size_t ACPI_TYPE_DEVICE ;
 size_t ACPI_TYPE_LOCAL_INDEX_FIELD ;
 size_t ACPI_TYPE_LOCAL_SCOPE ;
 char const** AcpiGbl_DmTypeNames ;

__attribute__((used)) static const char *
AcpiDmGetObjectTypeName (
    ACPI_OBJECT_TYPE Type)
{

    if (Type == ACPI_TYPE_LOCAL_SCOPE)
    {
        Type = ACPI_TYPE_DEVICE;
    }
    else if (Type > ACPI_TYPE_LOCAL_INDEX_FIELD)
    {
        return ("");
    }

    return (AcpiGbl_DmTypeNames[Type]);
}
