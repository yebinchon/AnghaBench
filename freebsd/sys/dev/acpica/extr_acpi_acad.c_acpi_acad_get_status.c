
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_acad_softc {int status; } ;
typedef void* device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ACPI_VPRINT (void*,int ,char*,char*) ;
 int POWER_PROFILE_ECONOMY ;
 int POWER_PROFILE_PERFORMANCE ;
 int acad ;
 int acpi_GetInteger (int ,char*,int*) ;
 int acpi_UserNotify (char*,int ,int) ;
 int acpi_device_get_parent_softc (void*) ;
 int acpi_get_handle (void*) ;
 struct acpi_acad_softc* device_get_softc (void*) ;
 int power_profile_set_state (int ) ;

__attribute__((used)) static void
acpi_acad_get_status(void *context)
{
    struct acpi_acad_softc *sc;
    device_t dev;
    ACPI_HANDLE h;
    int newstatus;

    dev = context;
    sc = device_get_softc(dev);
    h = acpi_get_handle(dev);
    newstatus = -1;
    acpi_GetInteger(h, "_PSR", &newstatus);


    ACPI_SERIAL_BEGIN(acad);
    if (newstatus != -1 && sc->status != newstatus) {
 sc->status = newstatus;
 ACPI_SERIAL_END(acad);
 power_profile_set_state(newstatus ? POWER_PROFILE_PERFORMANCE :
     POWER_PROFILE_ECONOMY);
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
     "%s Line\n", newstatus ? "On" : "Off");
 acpi_UserNotify("ACAD", h, newstatus);
    } else
 ACPI_SERIAL_END(acad);
}
