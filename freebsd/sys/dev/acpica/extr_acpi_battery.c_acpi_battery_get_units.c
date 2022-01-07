
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * devclass_t ;


 int * devclass_find (char*) ;
 int devclass_get_count (int *) ;

int
acpi_battery_get_units(void)
{
    devclass_t batt_dc;

    batt_dc = devclass_find("battery");
    if (batt_dc == ((void*)0))
 return (0);
    return (devclass_get_count(batt_dc));
}
