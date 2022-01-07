
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tda19988_softc {int sc_edid_len; int * sc_edid; } ;
typedef int device_t ;


 int ENXIO ;
 struct tda19988_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tda19988_get_edid(device_t dev, uint8_t **edid, uint32_t *edid_len)
{
 struct tda19988_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_edid) {
  *edid = sc->sc_edid;
  *edid_len = sc->sc_edid_len;
 } else
  return (ENXIO);

 return (0);
}
