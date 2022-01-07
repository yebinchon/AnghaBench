
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int gpio_busdev; } ;
typedef int device_t ;


 struct as3722_softc* device_get_softc (int ) ;

device_t
as3722_gpio_get_bus(device_t dev)
{
 struct as3722_softc *sc;

 sc = device_get_softc(dev);
 return (sc->gpio_busdev);
}
