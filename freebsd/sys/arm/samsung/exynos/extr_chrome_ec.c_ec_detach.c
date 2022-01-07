
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {scalar_t__ have_arbitrator; } ;
typedef int device_t ;


 int bus_release (struct ec_softc*) ;
 struct ec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ec_detach(device_t dev)
{
 struct ec_softc *sc;

 sc = device_get_softc(dev);

 if (sc->have_arbitrator) {
  bus_release(sc);
 }

 return (0);
}
