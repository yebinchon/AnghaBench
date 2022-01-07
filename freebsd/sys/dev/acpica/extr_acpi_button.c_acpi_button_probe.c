
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_button_softc {int fixed; void* button_type; } ;
typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,char**) ;
 void* ACPI_POWER_BUTTON ;
 void* ACPI_SLEEP_BUTTON ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int btn_ids ;
 int device_get_parent (int ) ;
 struct acpi_button_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
acpi_button_probe(device_t dev)
{
    struct acpi_button_softc *sc;
    char *str;
    int rv;

    if (acpi_disabled("button"))
 return (ENXIO);
    rv = ACPI_ID_PROBE(device_get_parent(dev), dev, btn_ids, &str);
    if (rv > 0)
 return (ENXIO);

    sc = device_get_softc(dev);
    if (strcmp(str, "PNP0C0C") == 0) {
 device_set_desc(dev, "Power Button");
 sc->button_type = ACPI_POWER_BUTTON;
    } else if (strcmp(str, "ACPI_FPB") == 0) {
 device_set_desc(dev, "Power Button (fixed)");
 sc->button_type = ACPI_POWER_BUTTON;
 sc->fixed = 1;
    } else if (strcmp(str, "PNP0C0E") == 0) {
 device_set_desc(dev, "Sleep Button");
 sc->button_type = ACPI_SLEEP_BUTTON;
    } else if (strcmp(str, "ACPI_FSB") == 0) {
 device_set_desc(dev, "Sleep Button (fixed)");
 sc->button_type = ACPI_SLEEP_BUTTON;
 sc->fixed = 1;
    }

    return (rv);
}
