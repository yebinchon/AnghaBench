
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sxd ;
struct acpi_softc {int acpi_sstate; } ;
typedef int device_t ;
typedef scalar_t__ ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int AcpiFormatException (scalar_t__) ;
 int ENXIO ;
 scalar_t__ acpi_GetInteger (int *,char*,int*) ;
 scalar_t__ acpi_MatchHid (int *,char*) ;
 int * acpi_get_handle (int ) ;
 int acpi_name (int *) ;
 struct acpi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,char*,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

int
acpi_device_pwr_for_sleep(device_t bus, device_t dev, int *dstate)
{
    struct acpi_softc *sc;
    ACPI_HANDLE handle;
    ACPI_STATUS status;
    char sxd[8];

    handle = acpi_get_handle(dev);







    if (dstate == ((void*)0) || handle == ((void*)0) ||
 acpi_MatchHid(handle, "PNP0500") ||
 acpi_MatchHid(handle, "PNP0501") ||
 acpi_MatchHid(handle, "PNP0502") ||
 acpi_MatchHid(handle, "PNP0510") ||
 acpi_MatchHid(handle, "PNP0511"))
 return (ENXIO);





    sc = device_get_softc(bus);
    snprintf(sxd, sizeof(sxd), "_S%dD", sc->acpi_sstate);
    status = acpi_GetInteger(handle, sxd, dstate);
    if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
     device_printf(dev, "failed to get %s on %s: %s\n", sxd,
  acpi_name(handle), AcpiFormatException(status));
     return (ENXIO);
    }

    return (0);
}
