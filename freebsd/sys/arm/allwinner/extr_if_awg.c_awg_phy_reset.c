
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int gpio_prop ;
typedef int * device_t ;
typedef int delay_prop ;


 int DELAY (int ) ;
 int ENXIO ;
 int GPIO_ACTIVE_LOW ;
 scalar_t__ GPIO_MAP_GPIOS (int *,int ,int ,scalar_t__,int *,int*,int*) ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int,int) ;
 int GPIO_PIN_SETFLAGS (int *,int,int ) ;
 int * OF_device_from_xref (int ) ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_node_from_xref (int ) ;
 scalar_t__ nitems (int *) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
awg_phy_reset(device_t dev)
{
 pcell_t gpio_prop[4], delay_prop[3];
 phandle_t node, gpio_node;
 device_t gpio;
 uint32_t pin, flags;
 uint32_t pin_value;

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "allwinner,reset-gpio", gpio_prop,
     sizeof(gpio_prop)) <= 0)
  return (0);

 if (OF_getencprop(node, "allwinner,reset-delays-us", delay_prop,
     sizeof(delay_prop)) <= 0)
  return (ENXIO);

 gpio_node = OF_node_from_xref(gpio_prop[0]);
 if ((gpio = OF_device_from_xref(gpio_prop[0])) == ((void*)0))
  return (ENXIO);

 if (GPIO_MAP_GPIOS(gpio, node, gpio_node, nitems(gpio_prop) - 1,
     gpio_prop + 1, &pin, &flags) != 0)
  return (ENXIO);

 pin_value = GPIO_PIN_LOW;
 if (OF_hasprop(node, "allwinner,reset-active-low"))
  pin_value = GPIO_PIN_HIGH;

 if (flags & GPIO_ACTIVE_LOW)
  pin_value = !pin_value;

 GPIO_PIN_SETFLAGS(gpio, pin, GPIO_PIN_OUTPUT);
 GPIO_PIN_SET(gpio, pin, pin_value);
 DELAY(delay_prop[0]);
 GPIO_PIN_SET(gpio, pin, !pin_value);
 DELAY(delay_prop[1]);
 GPIO_PIN_SET(gpio, pin, pin_value);
 DELAY(delay_prop[2]);

 return (0);
}
