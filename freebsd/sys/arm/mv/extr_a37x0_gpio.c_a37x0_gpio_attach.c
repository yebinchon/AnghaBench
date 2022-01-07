
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a37x0_gpio_softc {scalar_t__ sc_npins; scalar_t__ sc_max_pins; int * sc_busdev; int syscon; } ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_getencprop_alloc (int ,char*,void**) ;
 int OF_prop_free (scalar_t__*) ;
 struct a37x0_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int ofw_bus_get_node (int ) ;
 int syscon_get_handle_default (int ,int *) ;

__attribute__((used)) static int
a37x0_gpio_attach(device_t dev)
{
 int err, ncells;
 pcell_t *ranges;
 struct a37x0_gpio_softc *sc;

 sc = device_get_softc(dev);

 err = syscon_get_handle_default(dev, &sc->syscon);
 if (err != 0) {
  device_printf(dev, "Cannot get syscon handle from parent\n");
  return (ENXIO);
 }


 ncells = OF_getencprop_alloc(ofw_bus_get_node(dev), "gpio-ranges",
     (void **)&ranges);
 if (ncells == -1)
  return (ENXIO);
 if (ncells != sizeof(*ranges) * 4 || ranges[1] != 0 || ranges[2] != 0) {
  OF_prop_free(ranges);
  return (ENXIO);
 }
 sc->sc_npins = ranges[3];
 OF_prop_free(ranges);


 if (sc->sc_npins > sc->sc_max_pins)
  return (ENXIO);

 sc->sc_busdev = gpiobus_attach_bus(dev);
 if (sc->sc_busdev == ((void*)0))
  return (ENXIO);

 return (0);
}
