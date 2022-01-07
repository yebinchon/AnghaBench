
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AcpiOsExecute (int ,int ,int ) ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_cmbat_init_battery ;

__attribute__((used)) static int
acpi_cmbat_resume(device_t dev)
{

    AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_cmbat_init_battery, dev);
    return (0);
}
