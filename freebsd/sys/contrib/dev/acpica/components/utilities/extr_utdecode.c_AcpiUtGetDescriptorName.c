
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACPI_DESC_TYPE_MAX ;
 size_t ACPI_GET_DESCRIPTOR_TYPE (void*) ;
 char const** AcpiGbl_DescTypeNames ;

const char *
AcpiUtGetDescriptorName (
    void *Object)
{

    if (!Object)
    {
        return ("NULL OBJECT");
    }

    if (ACPI_GET_DESCRIPTOR_TYPE (Object) > ACPI_DESC_TYPE_MAX)
    {
        return ("Not a Descriptor");
    }

    return (AcpiGbl_DescTypeNames[ACPI_GET_DESCRIPTOR_TYPE (Object)]);
}
