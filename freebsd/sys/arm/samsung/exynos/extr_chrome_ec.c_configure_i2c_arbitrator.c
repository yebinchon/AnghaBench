
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {int have_arbitrator; int ec_gpio; int our_gpio; } ;
typedef int phandle_t ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int *,int) ;
 scalar_t__ OF_hasprop (int,char*) ;

__attribute__((used)) static void
configure_i2c_arbitrator(struct ec_softc *sc)
{
 phandle_t arbitrator;


 arbitrator = OF_finddevice("/i2c-arbitrator");
 if (arbitrator != -1 &&
     OF_hasprop(arbitrator, "freebsd,our-gpio") &&
     OF_hasprop(arbitrator, "freebsd,ec-gpio")) {
  sc->have_arbitrator = 1;
  OF_getencprop(arbitrator, "freebsd,our-gpio",
      &sc->our_gpio, sizeof(sc->our_gpio));
  OF_getencprop(arbitrator, "freebsd,ec-gpio",
      &sc->ec_gpio, sizeof(sc->ec_gpio));
 } else {
  sc->have_arbitrator = 0;
  sc->our_gpio = 0;
  sc->ec_gpio = 0;
 }
}
