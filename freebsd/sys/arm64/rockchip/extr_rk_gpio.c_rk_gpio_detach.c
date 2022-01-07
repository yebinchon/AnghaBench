
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_gpio_softc {int clk; int sc_mtx; int sc_res; scalar_t__ sc_busdev; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int ) ;
 int clk_disable (int ) ;
 struct rk_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_destroy (int *) ;
 int rk_gpio_spec ;

__attribute__((used)) static int
rk_gpio_detach(device_t dev)
{
 struct rk_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_busdev)
  gpiobus_detach_bus(dev);
 bus_release_resources(dev, rk_gpio_spec, sc->sc_res);
 mtx_destroy(&sc->sc_mtx);
 clk_disable(sc->clk);

 return(0);
}
