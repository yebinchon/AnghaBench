
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_softc {int mtx; int * memres; int dev; int * intres; int * inthandle; int ** cspins; int * spibus; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_child (int ,int *) ;
 struct spi_softc* device_get_softc (int ) ;
 int gpio_pin_release (int *) ;
 int mtx_destroy (int *) ;
 int nitems (int **) ;

__attribute__((used)) static int
spi_detach(device_t dev)
{
 struct spi_softc *sc = device_get_softc(dev);
 int error, idx;

 if ((error = bus_generic_detach(sc->dev)) != 0)
  return (error);

 if (sc->spibus != ((void*)0))
  device_delete_child(dev, sc->spibus);

 for (idx = 0; idx < nitems(sc->cspins); ++idx) {
  if (sc->cspins[idx] != ((void*)0))
   gpio_pin_release(sc->cspins[idx]);
 }

 if (sc->inthandle != ((void*)0))
  bus_teardown_intr(sc->dev, sc->intres, sc->inthandle);
 if (sc->intres != ((void*)0))
  bus_release_resource(sc->dev, SYS_RES_IRQ, 0, sc->intres);
 if (sc->memres != ((void*)0))
  bus_release_resource(sc->dev, SYS_RES_MEMORY, 0, sc->memres);

 mtx_destroy(&sc->mtx);

 return (0);
}
