
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cmbat_softc {int bst_lastupdated; } ;
typedef scalar_t__ device_t ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;






 int AcpiOsExecute (int ,int ,scalar_t__) ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_UserNotify (char*,int ,int) ;
 int acpi_cmbat_get_bif_task ;
 struct acpi_cmbat_softc* device_get_softc (scalar_t__) ;
 int timespecclear (int *) ;

__attribute__((used)) static void
acpi_cmbat_notify_handler(ACPI_HANDLE h, UINT32 notify, void *context)
{
    struct acpi_cmbat_softc *sc;
    device_t dev;

    dev = (device_t)context;
    sc = device_get_softc(dev);

    switch (notify) {
    case 128:
    case 130:




 timespecclear(&sc->bst_lastupdated);
 break;
    case 129:
    case 131:




 AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_cmbat_get_bif_task, dev);
 break;
    }

    acpi_UserNotify("CMBAT", h, notify);
}
