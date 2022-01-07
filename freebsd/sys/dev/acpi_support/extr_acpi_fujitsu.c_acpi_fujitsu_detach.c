
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_fujitsu_softc {int sysctl_ctx; int handle; } ;
typedef int device_t ;


 int ACPI_DEVICE_NOTIFY ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int acpi_fujitsu_notify_handler ;
 struct acpi_fujitsu_softc* device_get_softc (int ) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
acpi_fujitsu_detach(device_t dev)
{
 struct acpi_fujitsu_softc *sc;

 sc = device_get_softc(dev);
 AcpiRemoveNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
    acpi_fujitsu_notify_handler);

 sysctl_ctx_free(&sc->sysctl_ctx);

 return (0);
}
