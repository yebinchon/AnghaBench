
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_softc {int acpi_sysctl_tree; } ;
struct acpi_panasonic_softc {int handle; int power_evh; int sysctl_ctx; int sysctl_tree; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int * name; } ;
typedef int ACPI_STATUS ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int AcpiFormatException (int ) ;
 int AcpiInstallNotifyHandler (int ,int ,int ,struct acpi_panasonic_softc*) ;
 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int OID_AUTO ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,int *,int,struct acpi_panasonic_softc*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 struct acpi_softc* acpi_device_get_parent_softc (int ) ;
 int acpi_get_handle (int ) ;
 int acpi_panasonic_notify ;
 int acpi_panasonic_power_profile ;
 int acpi_panasonic_sysctl ;
 struct acpi_panasonic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int power_profile_change ;
 int sysctl_ctx_free (int *) ;
 int sysctl_ctx_init (int *) ;
 TYPE_1__* sysctl_table ;

__attribute__((used)) static int
acpi_panasonic_attach(device_t dev)
{
 struct acpi_panasonic_softc *sc;
 struct acpi_softc *acpi_sc;
 ACPI_STATUS status;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->handle = acpi_get_handle(dev);

 acpi_sc = acpi_device_get_parent_softc(dev);


 sysctl_ctx_init(&sc->sysctl_ctx);
 sc->sysctl_tree = SYSCTL_ADD_NODE(&sc->sysctl_ctx,
     SYSCTL_CHILDREN(acpi_sc->acpi_sysctl_tree), OID_AUTO,
     "panasonic", CTLFLAG_RD, 0, "");
 for (i = 0; sysctl_table[i].name != ((void*)0); i++) {
  SYSCTL_ADD_PROC(&sc->sysctl_ctx,
      SYSCTL_CHILDREN(sc->sysctl_tree), OID_AUTO,
      sysctl_table[i].name,
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
      sc, i, acpi_panasonic_sysctl, "I", "");
 }
 status = AcpiInstallNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
     acpi_panasonic_notify, sc);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "couldn't install notify handler - %s\n",
      AcpiFormatException(status));
  sysctl_ctx_free(&sc->sysctl_ctx);
  return (ENXIO);
 }


 sc->power_evh = EVENTHANDLER_REGISTER(power_profile_change,
     acpi_panasonic_power_profile, sc->handle, 0);

 return (0);
}
