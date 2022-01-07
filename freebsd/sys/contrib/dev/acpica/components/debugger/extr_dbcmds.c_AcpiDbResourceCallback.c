
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_RESOURCE ;


 int AE_OK ;

__attribute__((used)) static ACPI_STATUS
AcpiDbResourceCallback (
    ACPI_RESOURCE *Resource,
    void *Context)
{

    return (AE_OK);
}
