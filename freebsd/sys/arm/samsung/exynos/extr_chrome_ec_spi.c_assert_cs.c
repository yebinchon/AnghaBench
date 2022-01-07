
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {int * dev_gpio; int dev; } ;


 int EC_SPI_CS ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int ,int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
assert_cs(struct ec_softc *sc, int enable)
{

 sc->dev_gpio = devclass_get_device(devclass_find("gpio"), 0);
 if (sc->dev_gpio == ((void*)0)) {
  device_printf(sc->dev, "Error: failed to get the GPIO dev\n");
  return (1);
 }

 GPIO_PIN_SETFLAGS(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_OUTPUT);

 if (enable) {
  GPIO_PIN_SET(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_LOW);
 } else {
  GPIO_PIN_SET(sc->dev_gpio, EC_SPI_CS, GPIO_PIN_HIGH);
 }

 return (0);
}
