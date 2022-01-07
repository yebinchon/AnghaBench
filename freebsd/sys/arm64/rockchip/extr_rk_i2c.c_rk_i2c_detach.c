
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_i2c_softc {int mtx; int * res; int * intrhand; int dev; int * pclk; int * sclk; int * iicbus; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int clk_release (int *) ;
 int device_delete_child (int ,int *) ;
 struct rk_i2c_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rk_i2c_spec ;

__attribute__((used)) static int
rk_i2c_detach(device_t dev)
{
 struct rk_i2c_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(dev)) != 0)
  return (error);

 if (sc->iicbus != ((void*)0))
  if ((error = device_delete_child(dev, sc->iicbus)) != 0)
   return (error);

 if (sc->sclk != ((void*)0))
  clk_release(sc->sclk);
 if (sc->pclk != ((void*)0))
  clk_release(sc->pclk);

 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(sc->dev, sc->res[1], sc->intrhand);

 bus_release_resources(dev, rk_i2c_spec, sc->res);

 mtx_destroy(&sc->mtx);

 return (0);
}
