
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {int ec_gpio; int our_gpio; int dev; } ;
typedef int * device_t ;


 int GPIO_PIN_GET (int *,int ,int*) ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bus_claim(struct ec_softc *sc)
{
 device_t gpio_dev;
 int status;

 if (sc->our_gpio == 0 || sc->ec_gpio == 0) {
  device_printf(sc->dev, "i2c arbitrator is not configured\n");
  return (1);
 }

 gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (gpio_dev == ((void*)0)) {
  device_printf(sc->dev, "cant find gpio_dev\n");
  return (1);
 }


 GPIO_PIN_SET(gpio_dev, sc->our_gpio, GPIO_PIN_LOW);




 GPIO_PIN_GET(gpio_dev, sc->ec_gpio, &status);

 if (status == 1) {

  return (0);
 }


 return (-1);
}
