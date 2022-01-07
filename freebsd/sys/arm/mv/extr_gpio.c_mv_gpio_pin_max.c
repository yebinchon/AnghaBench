
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_softc {int pin_num; } ;
typedef int device_t ;


 int EINVAL ;
 struct mv_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_gpio_pin_max(device_t dev, int *maxpin)
{
 struct mv_gpio_softc *sc;
 if (maxpin == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 *maxpin = sc->pin_num;

 return (0);
}
