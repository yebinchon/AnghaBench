
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1310_gpio_softc {int lg_res; int * lg_busdev; int lg_bsh; int lg_bst; int lg_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int ) ;
 struct rt1310_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 struct rt1310_gpio_softc* rt1310_gpio_sc ;

__attribute__((used)) static int
rt1310_gpio_attach(device_t dev)
{
 struct rt1310_gpio_softc *sc = device_get_softc(dev);
 int rid;

 sc->lg_dev = dev;

 rid = 0;
 sc->lg_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->lg_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->lg_bst = rman_get_bustag(sc->lg_res);
 sc->lg_bsh = rman_get_bushandle(sc->lg_res);

 rt1310_gpio_sc = sc;

 sc->lg_busdev = gpiobus_attach_bus(dev);
 if (sc->lg_busdev == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, rid, sc->lg_res);
  return (ENXIO);
 }

 return (0);
}
