
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_STATE_D3 ;
 int GIANT_REQUIRED ;
 int acpi_set_power_children (int ,int ) ;
 int bus_generic_suspend (int ) ;

__attribute__((used)) static int
acpi_suspend(device_t dev)
{
    int error;

    GIANT_REQUIRED;

    error = bus_generic_suspend(dev);
    if (error == 0)
 acpi_set_power_children(dev, ACPI_STATE_D3);

    return (error);
}
