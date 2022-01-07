
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cmbat_softc {int bst_lastupdated; int dev; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_ALL_NOTIFY ;
 int AcpiInstallNotifyHandler (int ,int ,int ,int ) ;
 int AcpiOsExecute (int ,int ,int ) ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_battery_register (int ) ;
 int acpi_cmbat_init_battery ;
 int acpi_cmbat_notify_handler ;
 int acpi_get_handle (int ) ;
 struct acpi_cmbat_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int timespecclear (int *) ;

__attribute__((used)) static int
acpi_cmbat_attach(device_t dev)
{
    int error;
    ACPI_HANDLE handle;
    struct acpi_cmbat_softc *sc;

    sc = device_get_softc(dev);
    handle = acpi_get_handle(dev);
    sc->dev = dev;

    timespecclear(&sc->bst_lastupdated);

    error = acpi_battery_register(dev);
    if (error != 0) {
     device_printf(dev, "registering battery failed\n");
 return (error);
    }





    AcpiInstallNotifyHandler(handle, ACPI_ALL_NOTIFY,
 acpi_cmbat_notify_handler, dev);

    AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_cmbat_init_battery, dev);

    return (0);
}
