
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {scalar_t__ have_arbitrator; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_claim (struct ec_softc*) ;
 int configure_i2c_arbitrator (struct ec_softc*) ;
 struct ec_softc* device_get_softc (int ) ;
 struct ec_softc* ec_sc ;

__attribute__((used)) static int
ec_attach(device_t dev)
{
 struct ec_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 ec_sc = sc;

 configure_i2c_arbitrator(sc);
 if (sc->have_arbitrator && bus_claim(sc) != 0) {
  return (ENXIO);
 }

 return (0);
}
