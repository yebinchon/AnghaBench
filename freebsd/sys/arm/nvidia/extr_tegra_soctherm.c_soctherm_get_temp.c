
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soctherm_softc {uintptr_t ntsensors; TYPE_1__* tsensors; } ;
typedef int device_t ;
struct TYPE_2__ {uintptr_t id; } ;


 int ERANGE ;
 struct soctherm_softc* device_get_softc (int ) ;
 int soctherm_read_temp (struct soctherm_softc*,TYPE_1__*,int*) ;

__attribute__((used)) static int
soctherm_get_temp(device_t dev, device_t cdev, uintptr_t id, int *val)
{
 struct soctherm_softc *sc;
 int i;

 sc = device_get_softc(dev);

 if (id >= 0x100) {
  id -= 0x100;
  if (id >= sc->ntsensors)
   return (ERANGE);
  return(soctherm_read_temp(sc, sc->tsensors + id, val));
 }

 for (i = 0; i < sc->ntsensors; i++) {
  if (sc->tsensors->id == id)
   return(soctherm_read_temp(sc, sc->tsensors + id, val));
 }
 return (ERANGE);
}
