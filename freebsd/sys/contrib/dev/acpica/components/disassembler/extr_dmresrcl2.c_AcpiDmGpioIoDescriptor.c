
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int PinConfig; size_t DebounceTimeout; size_t DriveStrength; int IntFlags; } ;
struct TYPE_6__ {TYPE_1__ Gpio; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_EXTRACT_2BIT_FLAG (int ,int) ;
 size_t ACPI_GET_2BIT_FLAG (int ) ;
 int AcpiDmGpioCommon (int *,TYPE_2__*,int ) ;
 int AcpiDmIndent (int ) ;
 size_t* AcpiGbl_IorDecode ;
 size_t* AcpiGbl_PpcDecode ;
 size_t* AcpiGbl_ShrDecode ;
 int AcpiOsPrintf (char*,size_t) ;

__attribute__((used)) static void
AcpiDmGpioIoDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{





    AcpiDmIndent (Level);
    AcpiOsPrintf ("GpioIo (%s, ",
        AcpiGbl_ShrDecode [ACPI_EXTRACT_2BIT_FLAG (Resource->Gpio.IntFlags, 3)]);

    if (Resource->Gpio.PinConfig <= 3)
    {
        AcpiOsPrintf ("%s, ",
            AcpiGbl_PpcDecode[Resource->Gpio.PinConfig]);
    }
    else
    {
        AcpiOsPrintf ("0x%2.2X, ", Resource->Gpio.PinConfig);
    }



    AcpiOsPrintf ("0x%4.4X, ", Resource->Gpio.DebounceTimeout);
    AcpiOsPrintf ("0x%4.4X, ", Resource->Gpio.DriveStrength);
    AcpiOsPrintf ("%s,\n",
        AcpiGbl_IorDecode [ACPI_GET_2BIT_FLAG (Resource->Gpio.IntFlags)]);



    AcpiDmGpioCommon (Info, Resource, Level);
}
