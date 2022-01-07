
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a37x0_gpio_softc {int sc_type; int sc_max_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;




 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_hasprop (int ,char*) ;
 int compat_data ;
 int device_get_parent (int ) ;
 struct a37x0_gpio_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char const*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
a37x0_gpio_probe(device_t dev)
{
 const char *desc;
 struct a37x0_gpio_softc *sc;

 if (!OF_hasprop(ofw_bus_get_node(dev), "gpio-controller"))
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_type = ofw_bus_search_compatible(
     device_get_parent(dev), compat_data)->ocd_data;
 switch (sc->sc_type) {
 case 129:
  sc->sc_max_pins = 36;
  desc = "Armada 37x0 North Bridge GPIO Controller";
  break;
 case 128:
  sc->sc_max_pins = 30;
  desc = "Armada 37x0 South Bridge GPIO Controller";
  break;
 default:
  return (ENXIO);
 }
 device_set_desc(dev, desc);

 return (BUS_PROBE_DEFAULT);
}
