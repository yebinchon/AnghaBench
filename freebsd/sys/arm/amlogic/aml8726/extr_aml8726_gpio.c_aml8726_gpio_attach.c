
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_gpio_softc {int npins; int * res; int * busdev; int dev; } ;
typedef int prop ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int AML_GPIO_LOCK_DESTROY (struct aml8726_gpio_softc*) ;
 int AML_GPIO_LOCK_INIT (struct aml8726_gpio_softc*) ;
 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int aml8726_gpio_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ rman_get_start (int ) ;

__attribute__((used)) static int
aml8726_gpio_attach(device_t dev)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);
 phandle_t node;
 pcell_t prop;

 sc->dev = dev;

 node = ofw_bus_get_node(dev);

 if (OF_getencprop(node, "pin-count",
     &prop, sizeof(prop)) <= 0) {
  device_printf(dev, "missing pin-count attribute in FDT\n");
  return (ENXIO);
 }
 sc->npins = prop;

 if (sc->npins > 32)
  return (ENXIO);

 if (bus_alloc_resources(dev, aml8726_gpio_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }




 if (rman_get_start(sc->res[1]) == rman_get_start(sc->res[0]))
   if (sc->npins > 16) {
  device_printf(dev,
      "too many pins for overlapping OEN and OUT\n");
  bus_release_resources(dev, aml8726_gpio_spec, sc->res);
  return (ENXIO);
  }

 AML_GPIO_LOCK_INIT(sc);

 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0)) {
  AML_GPIO_LOCK_DESTROY(sc);
  bus_release_resources(dev, aml8726_gpio_spec, sc->res);
  return (ENXIO);
 }

 return (0);
}
