
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_isab_softc {int ap_handle; } ;
typedef int device_t ;



 int ENOENT ;
 struct acpi_isab_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_isab_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct acpi_isab_softc *sc = device_get_softc(dev);

 switch (which) {
 case 128:
  *result = (uintptr_t)sc->ap_handle;
  return (0);
 }
 return (ENOENT);
}
