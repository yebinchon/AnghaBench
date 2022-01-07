
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {int ConnectionType; } ;
struct TYPE_7__ {TYPE_1__ Gpio; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;




 int AcpiDmGpioIntDescriptor (int *,TYPE_2__*,int ,int ) ;
 int AcpiDmGpioIoDescriptor (int *,TYPE_2__*,int ,int ) ;
 int AcpiOsPrintf (char*) ;

void
AcpiDmGpioDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{
    UINT8 ConnectionType;


    ConnectionType = Resource->Gpio.ConnectionType;

    switch (ConnectionType)
    {
    case 129:

        AcpiDmGpioIntDescriptor (Info, Resource, Length, Level);
        break;

    case 128:

        AcpiDmGpioIoDescriptor (Info, Resource, Length, Level);
        break;

    default:

        AcpiOsPrintf ("Unknown GPIO type\n");
        break;
    }
}
