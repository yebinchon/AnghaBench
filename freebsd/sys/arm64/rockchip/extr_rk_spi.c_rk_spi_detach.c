
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_spi_softc {int mtx; int * res; int * intrhand; int dev; int * clk_apb; int * clk_spi; int * spibus; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int clk_release (int *) ;
 int device_delete_child (int ,int *) ;
 struct rk_spi_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rk_spi_spec ;

__attribute__((used)) static int
rk_spi_detach(device_t dev)
{
 struct rk_spi_softc *sc;

 sc = device_get_softc(dev);

 bus_generic_detach(sc->dev);
 if (sc->spibus != ((void*)0))
  device_delete_child(dev, sc->spibus);

 if (sc->clk_spi != ((void*)0))
  clk_release(sc->clk_spi);
 if (sc->clk_apb)
  clk_release(sc->clk_apb);

 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(sc->dev, sc->res[1], sc->intrhand);

 bus_release_resources(dev, rk_spi_spec, sc->res);
 mtx_destroy(&sc->mtx);

 return (0);
}
