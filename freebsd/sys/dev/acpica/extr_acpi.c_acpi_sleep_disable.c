
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_softc {scalar_t__ acpi_sleep_disabled; } ;
typedef int ACPI_STATUS ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 int AE_ERROR ;
 int AE_OK ;
 int AcpiGbl_SystemAwakeAndRunning ;
 scalar_t__ TRUE ;
 int acpi ;

__attribute__((used)) static ACPI_STATUS
acpi_sleep_disable(struct acpi_softc *sc)
{
    ACPI_STATUS status;


    if (!AcpiGbl_SystemAwakeAndRunning)
 return (AE_ERROR);

    ACPI_LOCK(acpi);
    status = sc->acpi_sleep_disabled ? AE_ERROR : AE_OK;
    sc->acpi_sleep_disabled = TRUE;
    ACPI_UNLOCK(acpi);

    return (status);
}
