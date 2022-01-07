
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_toshiba_softc {int handle; int sysctl_ctx; int sysctl_tree; int dev; } ;
struct acpi_softc {int acpi_sysctl_tree; } ;
typedef int device_t ;
struct TYPE_2__ {int * name; } ;
typedef int ACPI_STATUS ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiEvaluateObject (int ,int ,int *,int *) ;
 int AcpiInstallNotifyHandler (int ,int ,int ,struct acpi_toshiba_softc*) ;
 int CTLFLAG_ANYBODY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int METHOD_HCI_ENABLE ;
 int OID_AUTO ;
 int SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,int *,int,struct acpi_toshiba_softc*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 struct acpi_softc* acpi_device_get_parent_softc (int ) ;
 int acpi_get_handle (int ) ;
 int acpi_toshiba_notify ;
 int acpi_toshiba_sysctl ;
 struct acpi_toshiba_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ enable_fn_keys ;
 int sysctl_ctx_free (int *) ;
 int sysctl_ctx_init (int *) ;
 TYPE_1__* sysctl_table ;

__attribute__((used)) static int
acpi_toshiba_attach(device_t dev)
{
 struct acpi_toshiba_softc *sc;
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
     "toshiba", CTLFLAG_RD, 0, "");

 for (i = 0; sysctl_table[i].name != ((void*)0); i++) {
  SYSCTL_ADD_PROC(&sc->sysctl_ctx,
      SYSCTL_CHILDREN(sc->sysctl_tree), OID_AUTO,
      sysctl_table[i].name,
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
      sc, i, acpi_toshiba_sysctl, "I", "");
 }

 if (enable_fn_keys != 0) {
  status = AcpiEvaluateObject(sc->handle, METHOD_HCI_ENABLE,
         ((void*)0), ((void*)0));
  if (ACPI_FAILURE(status)) {
   device_printf(dev, "enable FN keys failed\n");
   sysctl_ctx_free(&sc->sysctl_ctx);
   return (ENXIO);
  }
  AcpiInstallNotifyHandler(sc->handle, ACPI_DEVICE_NOTIFY,
      acpi_toshiba_notify, sc);
 }

 return (0);
}
