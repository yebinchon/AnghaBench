
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_pcib_softc {uintptr_t sc_busnr; } ;
typedef int device_t ;


 int ENOENT ;


 struct mv_pcib_softc* device_get_softc (int ) ;
 uintptr_t device_get_unit (int ) ;

__attribute__((used)) static int
mv_pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct mv_pcib_softc *sc = device_get_softc(dev);

 switch (which) {
 case 129:
  *result = sc->sc_busnr;
  return (0);
 case 128:
  *result = device_get_unit(dev);
  return (0);
 }

 return (ENOENT);
}
