
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_rng_softc {int * sc_mem_res; int sc_rngto; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bcm2835_rng_stop (struct bcm2835_rng_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int callout_drain (int *) ;
 struct bcm2835_rng_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm2835_rng_detach(device_t dev)
{
 struct bcm2835_rng_softc *sc;

 sc = device_get_softc(dev);


 bcm2835_rng_stop(sc);


 callout_drain(&sc->sc_rngto);


 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (0);
}
