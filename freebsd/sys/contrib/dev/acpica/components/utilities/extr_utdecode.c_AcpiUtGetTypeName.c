
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ACPI_OBJECT_TYPE ;


 size_t ACPI_TYPE_INVALID ;
 char const* AcpiGbl_BadType ;
 char const** AcpiGbl_NsTypeNames ;

const char *
AcpiUtGetTypeName (
    ACPI_OBJECT_TYPE Type)
{

    if (Type > ACPI_TYPE_INVALID)
    {
        return (AcpiGbl_BadType);
    }

    return (AcpiGbl_NsTypeNames[Type]);
}
