
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_panasonic_softc {int sysctl_ctx; int handle; int power_evh; } ;
typedef int device_t ;


 int ACPI_DEVICE_NOTIFY ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int acpi_panasonic_notify ;
 struct acpi_panasonic_softc* device_get_softc (int ) ;
 int power_profile_change ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
acpi_panasonic_detach(device_t dev)
{
 struct acpi_panasonic_softc *sc;

 sc = device_get_softc(dev);


 EVENTHANDLER_DEREGISTER(power_profile_change, sc->power_evh);


 AcpiRemoveNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
     acpi_panasonic_notify);


 sysctl_ctx_free(&sc->sysctl_ctx);

 return (0);
}
