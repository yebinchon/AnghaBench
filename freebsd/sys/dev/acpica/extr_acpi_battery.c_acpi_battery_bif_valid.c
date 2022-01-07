
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_bif {scalar_t__ lfcap; } ;



int
acpi_battery_bif_valid(struct acpi_bif *bif)
{
    return (bif->lfcap != 0);
}
