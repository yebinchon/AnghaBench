
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int PinConfig; size_t DebounceTimeout; int IntFlags; } ;
struct TYPE_6__ {TYPE_1__ Gpio; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_EXTRACT_2BIT_FLAG (int ,int) ;
 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int AcpiDmGpioCommon (int *,TYPE_2__*,int ) ;
 int AcpiDmIndent (int ) ;
 int * AcpiGbl_HeDecode ;
 int * AcpiGbl_LlDecode ;
 size_t* AcpiGbl_PpcDecode ;
 int * AcpiGbl_ShrDecode ;
 int AcpiOsPrintf (char*,size_t,...) ;

__attribute__((used)) static void
AcpiDmGpioIntDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{





    AcpiDmIndent (Level);
    AcpiOsPrintf ("GpioInt (%s, %s, %s, ",
        AcpiGbl_HeDecode [ACPI_GET_1BIT_FLAG (Resource->Gpio.IntFlags)],
        AcpiGbl_LlDecode [ACPI_EXTRACT_2BIT_FLAG (Resource->Gpio.IntFlags, 1)],
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
    AcpiOsPrintf ("0x%4.4X,\n", Resource->Gpio.DebounceTimeout);



    AcpiDmGpioCommon (Info, Resource, Level);
}
