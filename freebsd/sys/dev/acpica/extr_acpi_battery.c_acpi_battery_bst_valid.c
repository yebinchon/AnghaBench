
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_bst {scalar_t__ state; scalar_t__ cap; scalar_t__ volt; } ;


 scalar_t__ ACPI_BATT_STAT_NOT_PRESENT ;
 scalar_t__ ACPI_BATT_UNKNOWN ;

int
acpi_battery_bst_valid(struct acpi_bst *bst)
{

    return (bst->state != ACPI_BATT_STAT_NOT_PRESENT &&
 bst->cap != ACPI_BATT_UNKNOWN && bst->volt != ACPI_BATT_UNKNOWN);
}
