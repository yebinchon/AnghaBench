
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oeminfo; int type; int serial; int model; } ;
union acpi_battery_ioctl_arg {int unit; TYPE_1__ bst; TYPE_1__ bif; TYPE_1__ battinfo; } ;
typedef int u_long ;
typedef int * device_t ;
typedef scalar_t__ caddr_t ;






 int ACPI_BATTERY_ALL_UNITS ;
 int ACPI_BATT_GET_INFO (int *,TYPE_1__*) ;
 int ACPI_BATT_GET_STATUS (int *,TYPE_1__*) ;
 int EINVAL ;
 int ENXIO ;
 int IOCPARM_LEN (int) ;
 int acpi_battery_clean_str (int ,int) ;
 int * acpi_battery_find_dev (int) ;
 int acpi_battery_get_battinfo (int *,TYPE_1__*) ;
 int acpi_battery_get_units () ;
 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static int
acpi_battery_ioctl(u_long cmd, caddr_t addr, void *arg)
{
    union acpi_battery_ioctl_arg *ioctl_arg;
    int error, unit;
    device_t dev;


    error = ENXIO;
    unit = 0;
    dev = ((void*)0);
    ioctl_arg = ((void*)0);
    if (IOCPARM_LEN(cmd) == sizeof(*ioctl_arg)) {
 ioctl_arg = (union acpi_battery_ioctl_arg *)addr;
 unit = ioctl_arg->unit;
 if (unit != ACPI_BATTERY_ALL_UNITS)
     dev = acpi_battery_find_dev(unit);
    }





    switch (cmd) {
    case 128:
 *(int *)addr = acpi_battery_get_units();
 error = 0;
 break;
    case 131:
 if (dev != ((void*)0) || unit == ACPI_BATTERY_ALL_UNITS) {
     bzero(&ioctl_arg->battinfo, sizeof(ioctl_arg->battinfo));
     error = acpi_battery_get_battinfo(dev, &ioctl_arg->battinfo);
 }
 break;
    case 130:
 if (dev != ((void*)0)) {
     bzero(&ioctl_arg->bif, sizeof(ioctl_arg->bif));
     error = ACPI_BATT_GET_INFO(dev, &ioctl_arg->bif);






     acpi_battery_clean_str(ioctl_arg->bif.model,
  sizeof(ioctl_arg->bif.model));
     acpi_battery_clean_str(ioctl_arg->bif.serial,
  sizeof(ioctl_arg->bif.serial));
     acpi_battery_clean_str(ioctl_arg->bif.type,
  sizeof(ioctl_arg->bif.type));
     acpi_battery_clean_str(ioctl_arg->bif.oeminfo,
  sizeof(ioctl_arg->bif.oeminfo));
 }
 break;
    case 129:
 if (dev != ((void*)0)) {
     bzero(&ioctl_arg->bst, sizeof(ioctl_arg->bst));
     error = ACPI_BATT_GET_STATUS(dev, &ioctl_arg->bst);
 }
 break;
    default:
 error = EINVAL;
    }

    return (error);
}
