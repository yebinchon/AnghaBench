
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_gpebit; int ec_gpehandle; } ;
typedef int device_t ;


 int AcpiDisableGpe (int ,int ) ;
 struct acpi_ec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_ec_shutdown(device_t dev)
{
    struct acpi_ec_softc *sc;


    sc = device_get_softc(dev);
    AcpiDisableGpe(sc->ec_gpehandle, sc->ec_gpebit);
    return (0);
}
