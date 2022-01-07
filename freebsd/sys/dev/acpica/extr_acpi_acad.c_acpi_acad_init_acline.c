
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_acad_softc {int status; } ;
typedef scalar_t__ device_t ;


 int ACPI_ACAD_RETRY_MAX ;
 int ACPI_VPRINT (scalar_t__,int ,char*,...) ;
 int AcpiOsSleep (int) ;
 int acpi_acad_get_status (scalar_t__) ;
 int acpi_device_get_parent_softc (scalar_t__) ;
 struct acpi_acad_softc* device_get_softc (scalar_t__) ;

__attribute__((used)) static void
acpi_acad_init_acline(void *arg)
{
    struct acpi_acad_softc *sc;
    device_t dev;
    int retry;

    dev = (device_t)arg;
    sc = device_get_softc(dev);
    ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
  "acline initialization start\n");

    for (retry = 0; retry < ACPI_ACAD_RETRY_MAX; retry++) {
 acpi_acad_get_status(dev);
 if (sc->status != -1)
     break;
 AcpiOsSleep(10000);
    }

    ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
  "acline initialization done, tried %d times\n", retry + 1);
}
