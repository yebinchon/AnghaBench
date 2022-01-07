
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_gpio_softc {int * mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int ZGPIO_LOCK_DESTROY (struct zy7_gpio_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct zy7_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
zy7_gpio_detach(device_t dev)
{
 struct zy7_gpio_softc *sc = device_get_softc(dev);

 gpiobus_detach_bus(dev);

 if (sc->mem_res != ((void*)0)) {

  bus_release_resource(dev, SYS_RES_MEMORY,
         rman_get_rid(sc->mem_res), sc->mem_res);
 }

 ZGPIO_LOCK_DESTROY(sc);

 return (0);
}
