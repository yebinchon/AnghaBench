
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_IO_ADDRESS ;


 int AE_OK ;
 int iodev_write_1 (int ,int) ;
 int iodev_write_2 (int ,int) ;
 int iodev_write_4 (int ,int) ;

ACPI_STATUS
AcpiOsWritePort(ACPI_IO_ADDRESS OutPort, UINT32 Value, UINT32 Width)
{

    switch (Width) {
    case 8:
 iodev_write_1(OutPort, Value);
 break;
    case 16:
 iodev_write_2(OutPort, Value);
 break;
    case 32:
 iodev_write_4(OutPort, Value);
 break;
    }

    return (AE_OK);
}
