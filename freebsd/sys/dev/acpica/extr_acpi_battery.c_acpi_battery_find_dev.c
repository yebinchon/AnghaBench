
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int * device_t ;
typedef int devclass_t ;


 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;

__attribute__((used)) static device_t
acpi_battery_find_dev(u_int logical_unit)
{
    int found_unit, i, maxunit;
    device_t dev;
    devclass_t batt_dc;

    dev = ((void*)0);
    found_unit = 0;
    batt_dc = devclass_find("battery");
    maxunit = devclass_get_maxunit(batt_dc);
    for (i = 0; i < maxunit; i++) {
 dev = devclass_get_device(batt_dc, i);
 if (dev == ((void*)0))
     continue;
 if (logical_unit == found_unit)
     break;
 found_unit++;
 dev = ((void*)0);
    }

    return (dev);
}
