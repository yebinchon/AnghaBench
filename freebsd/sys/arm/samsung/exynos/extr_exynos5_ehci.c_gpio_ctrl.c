
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_ehci_softc {int dev; } ;
typedef int * device_t ;


 int GPIO_PIN_HIGH ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int ,int ) ;
 int PIN_USB ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
gpio_ctrl(struct exynos_ehci_softc *esc, int dir, int power)
{
 device_t gpio_dev;


 gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (gpio_dev == ((void*)0)) {
  device_printf(esc->dev, "cant find gpio_dev\n");
  return (1);
 }

 if (power)
  GPIO_PIN_SET(gpio_dev, PIN_USB, GPIO_PIN_HIGH);
 else
  GPIO_PIN_SET(gpio_dev, PIN_USB, GPIO_PIN_LOW);

 if (dir)
  GPIO_PIN_SETFLAGS(gpio_dev, PIN_USB, GPIO_PIN_OUTPUT);
 else
  GPIO_PIN_SETFLAGS(gpio_dev, PIN_USB, GPIO_PIN_INPUT);

 return (0);
}
