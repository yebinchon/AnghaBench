
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_toshiba_softc {int sysctl_ctx; int handle; } ;
typedef int device_t ;


 int ACPI_DEVICE_NOTIFY ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int acpi_toshiba_notify ;
 struct acpi_toshiba_softc* device_get_softc (int ) ;
 scalar_t__ enable_fn_keys ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
acpi_toshiba_detach(device_t dev)
{
 struct acpi_toshiba_softc *sc;

 sc = device_get_softc(dev);
 if (enable_fn_keys != 0) {
  AcpiRemoveNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
     acpi_toshiba_notify);
 }
 sysctl_ctx_free(&sc->sysctl_ctx);

 return (0);
}
