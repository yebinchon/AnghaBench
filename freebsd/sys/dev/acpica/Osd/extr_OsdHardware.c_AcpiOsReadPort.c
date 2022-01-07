
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_IO_ADDRESS ;


 int AE_OK ;
 int iodev_read_1 (int ) ;
 int iodev_read_2 (int ) ;
 int iodev_read_4 (int ) ;

ACPI_STATUS
AcpiOsReadPort(ACPI_IO_ADDRESS InPort, UINT32 *Value, UINT32 Width)
{

    switch (Width) {
    case 8:
 *Value = iodev_read_1(InPort);
 break;
    case 16:
 *Value = iodev_read_2(InPort);
 break;
    case 32:
 *Value = iodev_read_4(InPort);
 break;
    }

    return (AE_OK);
}
