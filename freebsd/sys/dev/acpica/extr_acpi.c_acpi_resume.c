
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_STATE_D0 ;
 int GIANT_REQUIRED ;
 int acpi_set_power_children (int ,int ) ;
 int bus_generic_resume (int ) ;

__attribute__((used)) static int
acpi_resume(device_t dev)
{

    GIANT_REQUIRED;

    acpi_set_power_children(dev, ACPI_STATE_D0);

    return (bus_generic_resume(dev));
}
