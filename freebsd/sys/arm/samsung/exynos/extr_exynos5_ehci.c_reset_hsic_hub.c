
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_ehci_softc {int dev; } ;
typedef int pin ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int DELAY (int) ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int OF_hasprop (int ,char*) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
reset_hsic_hub(struct exynos_ehci_softc *esc, phandle_t hub)
{
 device_t gpio_dev;
 pcell_t pin;


 if (!OF_hasprop(hub, "freebsd,reset-gpio")) {
  return (1);
 }

 if (OF_getencprop(hub, "freebsd,reset-gpio", &pin, sizeof(pin)) < 0) {
  device_printf(esc->dev,
      "failed to decode reset GPIO pin number for HSIC hub\n");
  return (1);
 }


 gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (gpio_dev == ((void*)0)) {
  device_printf(esc->dev, "Cant find gpio device\n");
  return (1);
 }

 GPIO_PIN_SET(gpio_dev, pin, GPIO_PIN_LOW);
 DELAY(100);
 GPIO_PIN_SET(gpio_dev, pin, GPIO_PIN_HIGH);

 return (0);
}
