
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_acad_softc {int status; } ;
typedef int * device_t ;


 int ENXIO ;
 int acpi_acad_devclass ;
 int acpi_acad_get_status (int *) ;
 int * devclass_get_device (int ,int ) ;
 struct acpi_acad_softc* device_get_softc (int *) ;

int
acpi_acad_get_acline(int *status)
{
    struct acpi_acad_softc *sc;
    device_t dev;

    dev = devclass_get_device(acpi_acad_devclass, 0);
    if (dev == ((void*)0))
 return (ENXIO);
    sc = device_get_softc(dev);

    acpi_acad_get_status(dev);
    *status = sc->status;

    return (0);
}
