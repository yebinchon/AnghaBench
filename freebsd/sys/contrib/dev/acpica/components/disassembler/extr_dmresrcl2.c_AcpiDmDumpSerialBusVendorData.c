
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_5__ {int Type; scalar_t__ TypeDataLength; } ;
struct TYPE_6__ {TYPE_1__ CommonSerialBus; } ;
typedef int AML_RESOURCE_UART_SERIALBUS ;
typedef int AML_RESOURCE_SPI_SERIALBUS ;
typedef int AML_RESOURCE_I2C_SERIALBUS ;
typedef TYPE_2__ AML_RESOURCE ;


 int ACPI_ADD_PTR (int,TYPE_2__*,int) ;
 scalar_t__ AML_RESOURCE_I2C_MIN_DATA_LEN ;

 scalar_t__ AML_RESOURCE_SPI_MIN_DATA_LEN ;

 scalar_t__ AML_RESOURCE_UART_MIN_DATA_LEN ;

 int AcpiDmDumpRawDataBuffer (int,scalar_t__,scalar_t__) ;
 int UINT8 ;
 int VendorData ;

__attribute__((used)) static void
AcpiDmDumpSerialBusVendorData (
    AML_RESOURCE *Resource,
    UINT32 Level)
{
    UINT8 *VendorData;
    UINT32 VendorLength;




    switch (Resource->CommonSerialBus.Type)
    {
    case 130:

        VendorLength = Resource->CommonSerialBus.TypeDataLength -
            AML_RESOURCE_I2C_MIN_DATA_LEN;

        VendorData = ACPI_ADD_PTR (UINT8, Resource,
            sizeof (AML_RESOURCE_I2C_SERIALBUS));
        break;

    case 129:

        VendorLength = Resource->CommonSerialBus.TypeDataLength -
            AML_RESOURCE_SPI_MIN_DATA_LEN;

        VendorData = ACPI_ADD_PTR (UINT8, Resource,
            sizeof (AML_RESOURCE_SPI_SERIALBUS));
        break;

    case 128:

        VendorLength = Resource->CommonSerialBus.TypeDataLength -
            AML_RESOURCE_UART_MIN_DATA_LEN;

        VendorData = ACPI_ADD_PTR (UINT8, Resource,
            sizeof (AML_RESOURCE_UART_SERIALBUS));
        break;

    default:

        return;
    }



    AcpiDmDumpRawDataBuffer (VendorData, VendorLength, Level);
}
