
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_gpio_softc {int sc_dev; } ;
typedef int ssize_t ;
typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 scalar_t__ bcm_gpio_get_ro_pins (struct bcm_gpio_softc*,scalar_t__,char*,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
bcm_gpio_get_reserved_pins(struct bcm_gpio_softc *sc)
{
 char *name;
 phandle_t gpio, node, reserved;
 ssize_t len;


 gpio = ofw_bus_get_node(sc->sc_dev);
 if (bcm_gpio_get_ro_pins(sc, gpio, "broadcom,read-only",
     "read-only") != 0)
  return (0);

 reserved = 0;
 node = OF_child(gpio);
 while ((node != 0) && (reserved == 0)) {
  len = OF_getprop_alloc(node, "name", (void **)&name);
  if (len == -1)
   return (-1);
  if (strcmp(name, "reserved") == 0)
   reserved = node;
  OF_prop_free(name);
  node = OF_peer(node);
 }
 if (reserved == 0)
  return (-1);

 if (bcm_gpio_get_ro_pins(sc, reserved, "broadcom,pins",
     "reserved") != 0)
  return (-1);

 return (0);
}
