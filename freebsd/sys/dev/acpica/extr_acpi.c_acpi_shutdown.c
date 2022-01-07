
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_STATE_S5 ;
 int GIANT_REQUIRED ;
 int acpi_wake_prep_walk (int ) ;
 int bus_generic_shutdown (int ) ;

__attribute__((used)) static int
acpi_shutdown(device_t dev)
{

    GIANT_REQUIRED;


    bus_generic_shutdown(dev);





    acpi_wake_prep_walk(ACPI_STATE_S5);

    return (0);
}
