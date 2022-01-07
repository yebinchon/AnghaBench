
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_softc {int dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int GPIO_PIN_HIGH ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int ,int ) ;
 int OF_getencprop (int,char*,int *,int) ;
 int OF_getproplen (int,char*) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
vbus_on(struct usb_phy_softc *sc)
{
 pcell_t dts_value[3];
 device_t gpio_dev;
 phandle_t node;
 pcell_t pin;
 int len;

 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (-1);


 if ((len = OF_getproplen(node, "vbus-supply")) <= 0)
  return (-1);
 OF_getencprop(node, "vbus-supply", dts_value, len);
 pin = dts_value[0];

 gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (gpio_dev == ((void*)0)) {
  device_printf(sc->dev, "can't find gpio_dev\n");
  return (1);
 }

 GPIO_PIN_SETFLAGS(gpio_dev, pin, GPIO_PIN_OUTPUT);
 GPIO_PIN_SET(gpio_dev, pin, GPIO_PIN_HIGH);

 return (0);
}
