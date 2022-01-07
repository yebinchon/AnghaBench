
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_ctrl_entry {int (* handler ) (scalar_t__,int *,int) ;scalar_t__ compat; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int gpios ;


 int ENXIO ;
 int GPIOS_PROP_CELLS ;
 int MAX_PINS_PER_NODE ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 int OF_getencprop (scalar_t__,char*,int *,int) ;
 int OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_node_from_xref (int ) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int gpio_controllers ;
 scalar_t__ ofw_bus_node_is_compatible (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,int *,int) ;

__attribute__((used)) static int
rk30_gpio_init(void)
{
 phandle_t child, parent, root, ctrl;
 pcell_t gpios[MAX_PINS_PER_NODE * GPIOS_PROP_CELLS];
 struct gpio_ctrl_entry *e;
 int len, rv;

 root = OF_finddevice("/");
 len = 0;
 parent = root;


 for (child = OF_child(parent); child != 0; child = OF_peer(child)) {


  while (OF_child(child)) {
   parent = child;
   child = OF_child(child);
  }
  if ((len = OF_getproplen(child, "gpios")) > 0) {

   if (len > sizeof(gpios))
    return (ENXIO);


   OF_getencprop(child, "gpios", gpios, len);

   e = (struct gpio_ctrl_entry *)&gpio_controllers;


   for (; e->compat; e++) {





    ctrl = OF_node_from_xref(gpios[0]);

    if (ofw_bus_node_is_compatible(ctrl, e->compat))

     if ((rv = e->handler(ctrl,
         (pcell_t *)&gpios, len)))
      return (rv);
   }
  }

  if (OF_peer(child) == 0) {

   child = parent;
   parent = OF_parent(child);
  }
 }
 return (0);
}
