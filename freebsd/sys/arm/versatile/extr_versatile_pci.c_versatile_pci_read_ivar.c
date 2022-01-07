
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_pci_softc {uintptr_t busno; } ;
typedef int device_t ;


 int ENOENT ;


 struct versatile_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
versatile_pci_read_ivar(device_t dev, device_t child, int which,
    uintptr_t *result)
{
 struct versatile_pci_softc *sc = device_get_softc(dev);

 switch (which) {
 case 128:
  *result = 0;
  return (0);
 case 129:
  *result = sc->busno;
  return (0);
 }

 return (ENOENT);
}
