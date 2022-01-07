
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_battinfo {int cap; int min; int rate; int state; } ;


 int ACPI_BATT_STAT_NOT_PRESENT ;

__attribute__((used)) static void
acpi_reset_battinfo(struct acpi_battinfo *info)
{
    info->cap = -1;
    info->min = -1;
    info->state = ACPI_BATT_STAT_NOT_PRESENT;
    info->rate = -1;
}
