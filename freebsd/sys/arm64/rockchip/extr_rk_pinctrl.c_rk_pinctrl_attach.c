
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_pinctrl_softc {int * dev; struct rk_pinctrl_conf* conf; int pmu; int grf; } ;
struct rk_pinctrl_conf {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 int bus_generic_attach (int *) ;
 int bus_generic_probe (int *) ;
 int compat_data ;
 struct rk_pinctrl_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_probe_and_attach (int *) ;
 int fdt_pinctrl_configure_tree (int *) ;
 int fdt_pinctrl_register (int *,char*) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 scalar_t__ ofw_bus_node_is_compatible (scalar_t__,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int *,int ) ;
 int rk_pinctrl_register_gpio (struct rk_pinctrl_softc*,char*,int *) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int *,scalar_t__) ;
 int strsep (char**,char*) ;
 scalar_t__ syscon_get_by_ofw_property (int *,scalar_t__,char*,int *) ;

__attribute__((used)) static int
rk_pinctrl_attach(device_t dev)
{
 struct rk_pinctrl_softc *sc;
 phandle_t node;
 device_t cdev;
 char *gpio_name, *eptr;
 int rv;

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(dev);

 if (OF_hasprop(node, "rockchip,grf") &&
     syscon_get_by_ofw_property(dev, node,
     "rockchip,grf", &sc->grf) != 0) {
  device_printf(dev, "cannot get grf driver handle\n");
  return (ENXIO);
 }


 if (ofw_bus_node_is_compatible(node, "rockchip,rk3399-pinctrl") ||
     ofw_bus_node_is_compatible(node, "rockchip,rk3288-pinctrl")) {
  if (OF_hasprop(node, "rockchip,pmu") &&
      syscon_get_by_ofw_property(dev, node,
      "rockchip,pmu", &sc->pmu) != 0) {
   device_printf(dev, "cannot get pmu driver handle\n");
   return (ENXIO);
  }
 }

 sc->conf = (struct rk_pinctrl_conf *)ofw_bus_search_compatible(dev,
     compat_data)->ocd_data;

 fdt_pinctrl_register(dev, "rockchip,pins");

 simplebus_init(dev, node);

 bus_generic_probe(dev);


 for (node = OF_child(node); node > 0; node = OF_peer(node)) {
  if (!ofw_bus_node_is_compatible(node, "rockchip,gpio-bank"))
   continue;

  rv = OF_getprop_alloc(node, "name", (void **)&gpio_name);
  if (rv <= 0) {
   device_printf(sc->dev, "Cannot GPIO subdevice name.\n");
   continue;
  }

  cdev = simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));
  if (cdev == ((void*)0)) {
   device_printf(dev, " Cannot add GPIO subdevice: %s\n",
       gpio_name);
   OF_prop_free(gpio_name);
   continue;
  }

  rv = device_probe_and_attach(cdev);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot attach GPIO subdevice: %s\n", gpio_name);
   OF_prop_free(gpio_name);
   continue;
  }


  eptr = gpio_name;
  strsep(&eptr, "@");
  if (gpio_name == eptr) {
   device_printf(sc->dev,
       "Unrecognized format of GPIO subdevice name: %s\n",
       gpio_name);
   OF_prop_free(gpio_name);
   continue;
  }
  rv = rk_pinctrl_register_gpio(sc, gpio_name, cdev);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot register GPIO subdevice %s: %d\n",
       gpio_name, rv);
   OF_prop_free(gpio_name);
   continue;
  }
  OF_prop_free(gpio_name);
 }

 fdt_pinctrl_configure_tree(dev);

 return (bus_generic_attach(dev));
}
