
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_pinctrl_softc {int * syscon; int dev; struct mv_padconf* padconf; } ;
struct mv_padconf {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ SYSCON_GET_HANDLE (int ,int **) ;
 int compat_data ;
 struct mv_pinctrl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
mv_pinctrl_attach(device_t dev)
{
 struct mv_pinctrl_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->padconf = (struct mv_padconf *)
     ofw_bus_search_compatible(dev,compat_data)->ocd_data;

 if (SYSCON_GET_HANDLE(sc->dev, &sc->syscon) != 0 ||
     sc->syscon == ((void*)0)) {
  device_printf(dev, "cannot get syscon for device\n");
  return (ENXIO);
 }

 node = ofw_bus_get_node(dev);

 fdt_pinctrl_register(dev, "marvell,pins");
 fdt_pinctrl_configure_tree(dev);

 return (0);
}
