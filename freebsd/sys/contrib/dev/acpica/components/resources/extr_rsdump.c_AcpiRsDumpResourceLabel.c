
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* StringPtr; } ;
typedef TYPE_1__ ACPI_RESOURCE_LABEL ;


 int ACPI_FUNCTION_ENTRY () ;
 int AcpiRsOutString (char*,char*) ;

__attribute__((used)) static void
AcpiRsDumpResourceLabel (
    char *Title,
    ACPI_RESOURCE_LABEL *ResourceLabel)
{
    ACPI_FUNCTION_ENTRY ();

    AcpiRsOutString (Title,
        ResourceLabel->StringPtr ?
            ResourceLabel->StringPtr : "[Not Specified]");
}
