
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Index; char* StringPtr; } ;
typedef TYPE_1__ ACPI_RESOURCE_SOURCE ;


 int ACPI_FUNCTION_ENTRY () ;
 int AcpiRsOutInteger8 (char*,int) ;
 int AcpiRsOutString (char*,char*) ;

__attribute__((used)) static void
AcpiRsDumpResourceSource (
    ACPI_RESOURCE_SOURCE *ResourceSource)
{
    ACPI_FUNCTION_ENTRY ();


    if (ResourceSource->Index == 0xFF)
    {
        return;
    }

    AcpiRsOutInteger8 ("Resource Source Index",
        ResourceSource->Index);

    AcpiRsOutString ("Resource Source",
        ResourceSource->StringPtr ?
            ResourceSource->StringPtr : "[Not Specified]");
}
