
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dock_softc {scalar_t__ _sta; } ;
typedef int device_t ;


 scalar_t__ ACPI_DEVICE_PRESENT (scalar_t__) ;
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int acpi_dock_get_info (int ) ;
 int acpi_dock_insert (int ) ;
 int acpi_dock_removal (int ) ;
 struct acpi_dock_softc* device_get_softc (int ) ;
 int dock ;

__attribute__((used)) static void
acpi_dock_device_check(device_t dev)
{
 struct acpi_dock_softc *sc;

 ACPI_SERIAL_ASSERT(dock);

 sc = device_get_softc(dev);
 acpi_dock_get_info(dev);






 if (sc->_sta == ACPI_DOCK_STATUS_UNKNOWN ||
     ACPI_DEVICE_PRESENT(sc->_sta))
  acpi_dock_insert(dev);
 else if (sc->_sta == 0)
  acpi_dock_removal(dev);
}
