
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_glkhandle; scalar_t__ ec_glk; } ;


 int ACPI_SERIAL_END (int ) ;
 int AcpiReleaseGlobalLock (int ) ;
 int ec ;

__attribute__((used)) static void
EcUnlock(struct acpi_ec_softc *sc)
{
    ACPI_SERIAL_END(ec);
    if (sc->ec_glk)
 AcpiReleaseGlobalLock(sc->ec_glkhandle);
}
