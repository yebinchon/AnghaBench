
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrkstr ;
struct i2c_softc {int rb_pinctl_idx; int rb_sdapin; int rb_sclpin; int dev; int debug; int * iicbus; int * res; scalar_t__ rid; } ;
typedef int phandle_t ;
typedef int ich_func_t ;
typedef int device_t ;


 int CTLFLAG_RWTUN ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 scalar_t__ bus_generic_attach ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 struct i2c_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pin_get_by_ofw_property (int ,int ,char*,int *) ;
 int gpio_pin_set_active (int ,int) ;
 int gpio_pin_setflags (int ,int ) ;
 int ofw_bus_find_string_index (int ,char*,char*,int*) ;
 int ofw_bus_get_node (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
i2c_attach(device_t dev)
{
 char wrkstr[16];
 struct i2c_softc *sc;
 phandle_t node;
 int err, cfgidx;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->rid = 0;

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->rid,
     RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not allocate resources");
  return (ENXIO);
 }

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "could not add iicbus child");
  return (ENXIO);
 }


 SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
     OID_AUTO, "debug", CTLFLAG_RWTUN, &sc->debug, 0,
     "Enable debug; 1=reads/writes, 2=add starts/stops");






 node = ofw_bus_get_node(sc->dev);

 err = gpio_pin_get_by_ofw_property(dev, node, "scl-gpios",
     &sc->rb_sclpin);
 if (err != 0)
  goto no_recovery;
 err = gpio_pin_get_by_ofw_property(dev, node, "sda-gpios",
     &sc->rb_sdapin);
 if (err != 0)
  goto no_recovery;






 gpio_pin_setflags(sc->rb_sclpin, GPIO_PIN_OUTPUT);
 gpio_pin_setflags(sc->rb_sdapin, GPIO_PIN_OUTPUT);
 gpio_pin_set_active(sc->rb_sclpin, 1);
 gpio_pin_set_active(sc->rb_sdapin, 1);







 err = ofw_bus_find_string_index(node, "pinctrl-names", "gpio", &cfgidx);
 if (err == 0) {
  snprintf(wrkstr, sizeof(wrkstr), "pinctrl-%d", cfgidx);
  if (OF_hasprop(node, "pinctrl-0") && OF_hasprop(node, wrkstr))
   sc->rb_pinctl_idx = cfgidx;
 }

no_recovery:




 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);
 return (0);
}
