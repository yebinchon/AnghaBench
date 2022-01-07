
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_resume (int ) ;
 int device_get_softc (int ) ;
 int enable_idle (int ) ;

__attribute__((used)) static int
acpi_cpu_resume(device_t dev)
{

    enable_idle(device_get_softc(dev));
    return (bus_generic_resume(dev));
}
