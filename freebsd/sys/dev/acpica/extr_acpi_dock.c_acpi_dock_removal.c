
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dock_softc {scalar_t__ status; scalar_t__ _sta; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_DOCK_ISOLATE ;
 scalar_t__ ACPI_DOCK_STATUS_DOCKED ;
 scalar_t__ ACPI_DOCK_STATUS_UNDOCKED ;
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ;
 int ACPI_DOCK_UNLOCK ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int acpi_UserNotify (char*,int ,int ) ;
 int acpi_dock_eject_children (int ) ;
 scalar_t__ acpi_dock_execute_dck (int ,int ) ;
 scalar_t__ acpi_dock_execute_ejx (int ,int,int ) ;
 int acpi_dock_execute_lck (int ,int ) ;
 int acpi_dock_get_info (int ) ;
 int acpi_get_handle (int ) ;
 struct acpi_dock_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int dock ;

__attribute__((used)) static void
acpi_dock_removal(device_t dev)
{
 struct acpi_dock_softc *sc;
 ACPI_HANDLE h;

 ACPI_SERIAL_ASSERT(dock);

 sc = device_get_softc(dev);
 h = acpi_get_handle(dev);

 if (sc->status == ACPI_DOCK_STATUS_DOCKED ||
     sc->status == ACPI_DOCK_STATUS_UNKNOWN) {
  acpi_dock_eject_children(dev);
  if (acpi_dock_execute_dck(dev, ACPI_DOCK_ISOLATE) != 0)
   return;

  acpi_dock_execute_lck(dev, ACPI_DOCK_UNLOCK);

  if (acpi_dock_execute_ejx(dev, 1, 0) != 0) {
   device_printf(dev, "_EJ0 failed\n");
   return;
  }

  acpi_UserNotify("Dock", h, 0);

  sc->status = ACPI_DOCK_STATUS_UNDOCKED;
 }

 acpi_dock_get_info(dev);
 if (sc->_sta != 0)
  device_printf(dev, "mechanical failure (%#x).\n", sc->_sta);
}
