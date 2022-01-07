
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_softc {int acpi_sysctl_tree; } ;
typedef int * device_t ;
struct TYPE_2__ {int state; int rate; int min; int cap; } ;


 int ACPIIO_BATT_GET_BATTINFO ;
 int ACPIIO_BATT_GET_BIF ;
 int ACPIIO_BATT_GET_BST ;
 int ACPIIO_BATT_GET_UNITS ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TRUE ;
 int acpi_batteries_initted ;
 TYPE_1__ acpi_battery_battinfo ;
 int acpi_battery_info_expire ;
 int acpi_battery_ioctl ;
 int acpi_battery_sysctl ;
 int acpi_battery_sysctl_ctx ;
 int acpi_battery_sysctl_tree ;
 int acpi_battery_units_sysctl ;
 int acpi_deregister_ioctl (int ,int ) ;
 int acpi_register_ioctl (int ,int ,int *) ;
 int battery ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 struct acpi_softc* device_get_softc (int *) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static int
acpi_battery_init(void)
{
    struct acpi_softc *sc;
    device_t dev;
    int error;

    ACPI_SERIAL_ASSERT(battery);

    error = ENXIO;
    dev = devclass_get_device(devclass_find("acpi"), 0);
    if (dev == ((void*)0))
 goto out;
    sc = device_get_softc(dev);

    error = acpi_register_ioctl(ACPIIO_BATT_GET_UNITS, acpi_battery_ioctl,
 ((void*)0));
    if (error != 0)
 goto out;
    error = acpi_register_ioctl(ACPIIO_BATT_GET_BATTINFO, acpi_battery_ioctl,
 ((void*)0));
    if (error != 0)
 goto out;
    error = acpi_register_ioctl(ACPIIO_BATT_GET_BIF, acpi_battery_ioctl, ((void*)0));
    if (error != 0)
 goto out;
    error = acpi_register_ioctl(ACPIIO_BATT_GET_BST, acpi_battery_ioctl, ((void*)0));
    if (error != 0)
 goto out;

    sysctl_ctx_init(&acpi_battery_sysctl_ctx);
    acpi_battery_sysctl_tree = SYSCTL_ADD_NODE(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(sc->acpi_sysctl_tree), OID_AUTO, "battery", CTLFLAG_RD,
 0, "battery status and info");
    SYSCTL_ADD_PROC(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "life", CTLTYPE_INT | CTLFLAG_RD,
 &acpi_battery_battinfo.cap, 0, acpi_battery_sysctl, "I",
 "percent capacity remaining");
    SYSCTL_ADD_PROC(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "time", CTLTYPE_INT | CTLFLAG_RD,
 &acpi_battery_battinfo.min, 0, acpi_battery_sysctl, "I",
 "remaining time in minutes");
    SYSCTL_ADD_PROC(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "rate", CTLTYPE_INT | CTLFLAG_RD,
 &acpi_battery_battinfo.rate, 0, acpi_battery_sysctl, "I",
 "present rate in mW");
    SYSCTL_ADD_PROC(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "state", CTLTYPE_INT | CTLFLAG_RD,
 &acpi_battery_battinfo.state, 0, acpi_battery_sysctl, "I",
 "current status flags");
    SYSCTL_ADD_PROC(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "units", CTLTYPE_INT | CTLFLAG_RD,
 ((void*)0), 0, acpi_battery_units_sysctl, "I", "number of batteries");
    SYSCTL_ADD_INT(&acpi_battery_sysctl_ctx,
 SYSCTL_CHILDREN(acpi_battery_sysctl_tree),
 OID_AUTO, "info_expire", CTLFLAG_RW,
 &acpi_battery_info_expire, 0,
 "time in seconds until info is refreshed");

    acpi_batteries_initted = TRUE;

out:
    if (error != 0) {
 acpi_deregister_ioctl(ACPIIO_BATT_GET_UNITS, acpi_battery_ioctl);
 acpi_deregister_ioctl(ACPIIO_BATT_GET_BATTINFO, acpi_battery_ioctl);
 acpi_deregister_ioctl(ACPIIO_BATT_GET_BIF, acpi_battery_ioctl);
 acpi_deregister_ioctl(ACPIIO_BATT_GET_BST, acpi_battery_ioctl);
    }
    return (error);
}
