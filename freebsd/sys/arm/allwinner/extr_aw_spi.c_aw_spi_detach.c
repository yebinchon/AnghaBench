
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_spi_softc {int mtx; int * res; int * intrhand; int dev; scalar_t__ rst_ahb; int * clk_ahb; int * clk_mod; int * spibus; } ;
typedef int device_t ;


 int aw_spi_spec ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int clk_release (int *) ;
 int device_delete_child (int ,int *) ;
 struct aw_spi_softc* device_get_softc (int ) ;
 int hwreset_assert (scalar_t__) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
aw_spi_detach(device_t dev)
{
 struct aw_spi_softc *sc;

 sc = device_get_softc(dev);

 bus_generic_detach(sc->dev);
 if (sc->spibus != ((void*)0))
  device_delete_child(dev, sc->spibus);

 if (sc->clk_mod != ((void*)0))
  clk_release(sc->clk_mod);
 if (sc->clk_ahb)
  clk_release(sc->clk_ahb);
 if (sc->rst_ahb)
  hwreset_assert(sc->rst_ahb);

 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(sc->dev, sc->res[1], sc->intrhand);

 bus_release_resources(dev, aw_spi_spec, sc->res);
 mtx_destroy(&sc->mtx);

 return (0);
}
