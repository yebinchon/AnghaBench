
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* UINT8 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_8__ {char* DeviceName; size_t PinCount; size_t PinIndex; void* Polarity; void* Direction; int Type; int PinNumber; int * Op; } ;
struct TYPE_6__ {int IntFlags; int ConnectionType; } ;
struct TYPE_7__ {TYPE_1__ Gpio; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_GPIO_INFO ;


 int AslGbl_MapfileFlag ;
 TYPE_3__* MpCreateGpioInfo (int ,char*) ;

void
MpSaveGpioInfo (
    ACPI_PARSE_OBJECT *Op,
    AML_RESOURCE *Resource,
    UINT32 PinCount,
    UINT16 *PinList,
    char *DeviceName)
{
    ACPI_GPIO_INFO *Info;
    UINT32 i;




    if (!AslGbl_MapfileFlag)
    {
        return;
    }



    for (i = 0; i < PinCount; i++)
    {
        Info = MpCreateGpioInfo (PinList[i], DeviceName);

        Info->Op = Op;
        Info->DeviceName = DeviceName;
        Info->PinCount = PinCount;
        Info->PinIndex = i;
        Info->PinNumber = PinList[i];
        Info->Type = Resource->Gpio.ConnectionType;
        Info->Direction = (UINT8) (Resource->Gpio.IntFlags & 0x0003);
        Info->Polarity = (UINT8) ((Resource->Gpio.IntFlags >> 1) & 0x0003);
    }
}
