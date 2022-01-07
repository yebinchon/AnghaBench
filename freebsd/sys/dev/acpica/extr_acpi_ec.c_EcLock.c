
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_softc {int ec_glkhandle; scalar_t__ ec_glk; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int AE_OK ;
 int AcpiAcquireGlobalLock (int ,int *) ;
 int EC_LOCK_TIMEOUT ;
 int ec ;

__attribute__((used)) static ACPI_STATUS
EcLock(struct acpi_ec_softc *sc)
{
    ACPI_STATUS status;


    status = AE_OK;
    if (sc->ec_glk) {
 status = AcpiAcquireGlobalLock(EC_LOCK_TIMEOUT, &sc->ec_glkhandle);
 if (ACPI_FAILURE(status))
     return (status);
    }
    ACPI_SERIAL_BEGIN(ec);
    return (status);
}
