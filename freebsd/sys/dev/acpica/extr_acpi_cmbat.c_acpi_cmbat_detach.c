
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_ALL_NOTIFY ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int acpi_battery_remove (int ) ;
 int acpi_cmbat_notify_handler ;
 int acpi_get_handle (int ) ;
 int cmbat ;
 int device_set_softc (int ,int *) ;

__attribute__((used)) static int
acpi_cmbat_detach(device_t dev)
{
    ACPI_HANDLE handle;

    handle = acpi_get_handle(dev);
    AcpiRemoveNotifyHandler(handle, ACPI_ALL_NOTIFY, acpi_cmbat_notify_handler);
    acpi_battery_remove(dev);






    ACPI_SERIAL_BEGIN(cmbat);
    device_set_softc(dev, ((void*)0));
    ACPI_SERIAL_END(cmbat);

    return (0);
}
