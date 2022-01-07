
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_gpio_softc {int * busdev; int * mem_res; int dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ZGPIO_LOCK_INIT (struct zy7_gpio_softc*) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct zy7_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int zy7_gpio_detach (int ) ;

__attribute__((used)) static int
zy7_gpio_attach(device_t dev)
{
 struct zy7_gpio_softc *sc = device_get_softc(dev);
 int rid;

 sc->dev = dev;

 ZGPIO_LOCK_INIT(sc);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev,
       SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Can't allocate memory for device");
  zy7_gpio_detach(dev);
  return (ENOMEM);
 }

 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0)) {
  zy7_gpio_detach(dev);
  return (ENOMEM);
 }

 return (0);
}
