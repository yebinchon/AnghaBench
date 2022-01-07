
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct acpi_acad_softc {int status; } ;
typedef scalar_t__ device_t ;
typedef scalar_t__ caddr_t ;



 int acpi_acad_get_status (scalar_t__) ;
 struct acpi_acad_softc* device_get_softc (scalar_t__) ;

__attribute__((used)) static int
acpi_acad_ioctl(u_long cmd, caddr_t addr, void *arg)
{
    struct acpi_acad_softc *sc;
    device_t dev;

    dev = (device_t)arg;
    sc = device_get_softc(dev);





    switch (cmd) {
    case 128:
 acpi_acad_get_status(dev);
 *(int *)addr = sc->status;
 break;
    default:
 break;
    }

    return (0);
}
