
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_dock_softc {void* _uid; void* _bdn; void* _sta; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 void* ACPI_DOCK_STATUS_UNKNOWN ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_VPRINT (int ,int ,char*,void*,void*,void*) ;
 int acpi_GetInteger (int ,char*,void**) ;
 int acpi_device_get_parent_softc (int ) ;
 int acpi_get_handle (int ) ;
 struct acpi_dock_softc* device_get_softc (int ) ;

__attribute__((used)) static void
acpi_dock_get_info(device_t dev)
{
 struct acpi_dock_softc *sc;
 ACPI_HANDLE h;

 sc = device_get_softc(dev);
 h = acpi_get_handle(dev);

 if (ACPI_FAILURE(acpi_GetInteger(h, "_STA", &sc->_sta)))
  sc->_sta = ACPI_DOCK_STATUS_UNKNOWN;
 if (ACPI_FAILURE(acpi_GetInteger(h, "_BDN", &sc->_bdn)))
  sc->_bdn = ACPI_DOCK_STATUS_UNKNOWN;
 if (ACPI_FAILURE(acpi_GetInteger(h, "_UID", &sc->_uid)))
  sc->_uid = ACPI_DOCK_STATUS_UNKNOWN;
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "_STA: %04x, _BDN: %04x, _UID: %04x\n", sc->_sta,
      sc->_bdn, sc->_uid);
}
