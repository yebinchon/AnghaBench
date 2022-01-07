
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_suspending; } ;
typedef int device_t ;


 int TRUE ;
 struct acpi_ec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_ec_suspend(device_t dev)
{
    struct acpi_ec_softc *sc;

    sc = device_get_softc(dev);
    sc->ec_suspending = TRUE;
    return (0);
}
