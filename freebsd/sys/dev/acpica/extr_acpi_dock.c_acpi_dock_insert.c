
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dock_softc {scalar_t__ status; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 int ACPI_DOCK_CONNECT ;
 int ACPI_DOCK_LOCK ;
 scalar_t__ ACPI_DOCK_STATUS_DOCKED ;
 scalar_t__ ACPI_DOCK_STATUS_UNDOCKED ;
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int acpi_UserNotify (char*,int ,int) ;
 scalar_t__ acpi_dock_execute_dck (int ,int ) ;
 int acpi_dock_execute_lck (int ,int ) ;
 int acpi_dock_insert_children (int ) ;
 int acpi_get_handle (int ) ;
 int cold ;
 struct acpi_dock_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dock ;

__attribute__((used)) static void
acpi_dock_insert(device_t dev)
{
 struct acpi_dock_softc *sc;
 ACPI_HANDLE h;

 ACPI_SERIAL_ASSERT(dock);

 sc = device_get_softc(dev);
 h = acpi_get_handle(dev);

 if (sc->status == ACPI_DOCK_STATUS_UNDOCKED ||
     sc->status == ACPI_DOCK_STATUS_UNKNOWN) {
  acpi_dock_execute_lck(dev, ACPI_DOCK_LOCK);
  if (acpi_dock_execute_dck(dev, ACPI_DOCK_CONNECT) != 0) {
   device_printf(dev, "_DCK failed\n");
   return;
  }

  if (!cold) {
   acpi_dock_insert_children(dev);

   acpi_UserNotify("Dock", h, 1);
  }

  sc->status = ACPI_DOCK_STATUS_DOCKED;
 }
}
