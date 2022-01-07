
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_gpio_softc {int * sc_busdev; int clk; int * sc_res; int sc_bsh; int sc_bst; int sc_mtx; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int MTX_SPIN ;
 int OF_hasprop (int ,char*) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int clk_get_name (int ) ;
 struct rk_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * gpiobus_attach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int rk_gpio_detach (int ) ;
 int rk_gpio_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
rk_gpio_attach(device_t dev)
{
 struct rk_gpio_softc *sc;
 phandle_t node;
 int err;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 node = ofw_bus_get_node(sc->sc_dev);
 if (!OF_hasprop(node, "gpio-controller"))
  return (ENXIO);

 mtx_init(&sc->sc_mtx, "rk gpio", "gpio", MTX_SPIN);

 if (bus_alloc_resources(dev, rk_gpio_spec, sc->sc_res)) {
  device_printf(dev, "could not allocate resources\n");
  bus_release_resources(dev, rk_gpio_spec, sc->sc_res);
  mtx_destroy(&sc->sc_mtx);
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->sc_res[0]);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res[0]);

 if (clk_get_by_ofw_index(dev, 0, 0, &sc->clk) != 0) {
  device_printf(dev, "Cannot get clock\n");
  rk_gpio_detach(dev);
  return (ENXIO);
 }
 err = clk_enable(sc->clk);
 if (err != 0) {
  device_printf(dev, "Could not enable clock %s\n",
      clk_get_name(sc->clk));
  rk_gpio_detach(dev);
  return (ENXIO);
 }

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0)) {
  rk_gpio_detach(dev);
  return (ENXIO);
 }

 return (0);
}
