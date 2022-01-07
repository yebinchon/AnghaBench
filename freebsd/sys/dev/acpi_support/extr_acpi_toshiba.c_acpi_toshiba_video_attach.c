
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_toshiba_softc {int video_handle; } ;
typedef int device_t ;


 int ENXIO ;
 int acpi_get_handle (int ) ;
 int acpi_toshiba_devclass ;
 struct acpi_toshiba_softc* devclass_get_softc (int ,int ) ;

__attribute__((used)) static int
acpi_toshiba_video_attach(device_t dev)
{
 struct acpi_toshiba_softc *sc;

 sc = devclass_get_softc(acpi_toshiba_devclass, 0);
 if (sc == ((void*)0))
  return (ENXIO);
 sc->video_handle = acpi_get_handle(dev);
 return (0);
}
