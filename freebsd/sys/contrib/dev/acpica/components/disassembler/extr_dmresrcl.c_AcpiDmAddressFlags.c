
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ResourceType; int SpecificFlags; } ;
struct TYPE_5__ {TYPE_1__ Address; } ;
typedef TYPE_2__ AML_RESOURCE ;


 scalar_t__ ACPI_IO_RANGE ;
 scalar_t__ ACPI_MEMORY_RANGE ;
 int AcpiDmIoFlags2 (int ) ;
 int AcpiDmMemoryFlags2 (int ) ;

__attribute__((used)) static void
AcpiDmAddressFlags (
    AML_RESOURCE *Resource)
{

    if (Resource->Address.ResourceType == ACPI_IO_RANGE)
    {
        AcpiDmIoFlags2 (Resource->Address.SpecificFlags);
    }
    else if (Resource->Address.ResourceType == ACPI_MEMORY_RANGE)
    {
        AcpiDmMemoryFlags2 (Resource->Address.SpecificFlags);
    }
}
