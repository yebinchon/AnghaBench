
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_PM_TYPE_ACPI ;
 int acpi_pm_func ;
 int cold ;
 int power_pm_register (int ,int ,int *) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
acpi_pm_register(void *arg)
{
    if (!cold || resource_disabled("acpi", 0))
 return;

    power_pm_register(POWER_PM_TYPE_ACPI, acpi_pm_func, ((void*)0));
}
