
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_suspend (int ) ;
 int device_get_softc (int ) ;
 int disable_idle (int ) ;

__attribute__((used)) static int
acpi_cpu_suspend(device_t dev)
{
    int error;

    error = bus_generic_suspend(dev);
    if (error)
 return (error);
    disable_idle(device_get_softc(dev));
    return (0);
}
