
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int acpi_batteries_initted ;
 int acpi_battery_init () ;
 int battery ;

int
acpi_battery_register(device_t dev)
{
    int error;

    error = 0;
    ACPI_SERIAL_BEGIN(battery);
    if (!acpi_batteries_initted)
 error = acpi_battery_init();
    ACPI_SERIAL_END(battery);
    return (error);
}
