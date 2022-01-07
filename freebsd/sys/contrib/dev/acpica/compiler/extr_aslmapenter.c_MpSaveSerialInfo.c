
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_14__ {char* DeviceName; int Speed; int Address; TYPE_5__* Resource; int * Op; } ;
struct TYPE_12__ {int DefaultBaudRate; } ;
struct TYPE_11__ {int ConnectionSpeed; int DeviceSelection; } ;
struct TYPE_10__ {int ConnectionSpeed; int SlaveAddress; } ;
struct TYPE_9__ {int Type; } ;
struct TYPE_13__ {scalar_t__ DescriptorType; TYPE_4__ UartSerialBus; TYPE_3__ SpiSerialBus; TYPE_2__ I2cSerialBus; TYPE_1__ CommonSerialBus; } ;
typedef TYPE_5__ AML_RESOURCE ;
typedef TYPE_6__ ACPI_SERIAL_INFO ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_RESOURCE_NAME_SERIAL_BUS ;



 int AslGbl_MapfileFlag ;
 TYPE_6__* MpCreateSerialInfo (char*,int ) ;

void
MpSaveSerialInfo (
    ACPI_PARSE_OBJECT *Op,
    AML_RESOURCE *Resource,
    char *DeviceName)
{
    ACPI_SERIAL_INFO *Info;
    UINT16 Address;
    UINT32 Speed;




    if (!AslGbl_MapfileFlag)
    {
        return;
    }

    if (Resource->DescriptorType != ACPI_RESOURCE_NAME_SERIAL_BUS)
    {
        return;
    }



    switch (Resource->CommonSerialBus.Type)
    {
    case 130:

        Address = Resource->I2cSerialBus.SlaveAddress;
        Speed = Resource->I2cSerialBus.ConnectionSpeed;
        break;

    case 129:

        Address = Resource->SpiSerialBus.DeviceSelection;
        Speed = Resource->SpiSerialBus.ConnectionSpeed;
        break;

    case 128:

        Address = 0;
        Speed = Resource->UartSerialBus.DefaultBaudRate;
        break;

    default:
        return;
    }

    Info = MpCreateSerialInfo (DeviceName, Address);

    Info->Op = Op;
    Info->DeviceName = DeviceName;
    Info->Resource = Resource;
    Info->Address = Address;
    Info->Speed = Speed;
}
