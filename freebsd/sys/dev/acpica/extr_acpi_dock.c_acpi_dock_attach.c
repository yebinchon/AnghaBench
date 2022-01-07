
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dock_softc {int sysctl_tree; int sysctl_ctx; int _uid; int _bdn; int _sta; int status; } ;
typedef int device_t ;
typedef int * ACPI_HANDLE ;


 int ACPI_ALL_NOTIFY ;
 int ACPI_DOCK_STATUS_UNKNOWN ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int AcpiEvaluateObject (int *,char*,int *,int *) ;
 int AcpiInstallNotifyHandler (int *,int ,int ,int ) ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_dock_device_check (int ) ;
 int acpi_dock_notify_handler ;
 int acpi_dock_status_sysctl ;
 int * acpi_get_handle (int ) ;
 struct acpi_dock_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int dock ;

__attribute__((used)) static int
acpi_dock_attach(device_t dev)
{
 struct acpi_dock_softc *sc;
 ACPI_HANDLE h;

 sc = device_get_softc(dev);
 h = acpi_get_handle(dev);
 if (sc == ((void*)0) || h == ((void*)0))
  return (ENXIO);

 sc->status = ACPI_DOCK_STATUS_UNKNOWN;

 AcpiEvaluateObject(h, "_INI", ((void*)0), ((void*)0));

 ACPI_SERIAL_BEGIN(dock);

 acpi_dock_device_check(dev);


 sc->sysctl_ctx = device_get_sysctl_ctx(dev);
 sc->sysctl_tree = device_get_sysctl_tree(dev);

 SYSCTL_ADD_INT(sc->sysctl_ctx,
  SYSCTL_CHILDREN(sc->sysctl_tree),
  OID_AUTO, "_sta", CTLFLAG_RD,
  &sc->_sta, 0, "Dock _STA");
 SYSCTL_ADD_INT(sc->sysctl_ctx,
  SYSCTL_CHILDREN(sc->sysctl_tree),
  OID_AUTO, "_bdn", CTLFLAG_RD,
  &sc->_bdn, 0, "Dock _BDN");
 SYSCTL_ADD_INT(sc->sysctl_ctx,
  SYSCTL_CHILDREN(sc->sysctl_tree),
  OID_AUTO, "_uid", CTLFLAG_RD,
  &sc->_uid, 0, "Dock _UID");
 SYSCTL_ADD_PROC(sc->sysctl_ctx,
  SYSCTL_CHILDREN(sc->sysctl_tree),
  OID_AUTO, "status",
  CTLTYPE_INT|CTLFLAG_RW, dev, 0,
  acpi_dock_status_sysctl, "I",
  "Dock/Undock operation");

 ACPI_SERIAL_END(dock);

 AcpiInstallNotifyHandler(h, ACPI_ALL_NOTIFY,
     acpi_dock_notify_handler, dev);

 return (0);
}
