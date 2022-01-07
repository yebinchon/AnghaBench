
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ich_arg; int ich_func; } ;
struct axp2xx_softc {int type; int nregs; struct axp2xx_reg_sc** regs; TYPE_2__ intr_hook; void* nsensors; void* sensors; void* gpiodev; void* npins; void* pins; int res; int mtx; } ;
struct axp2xx_regdef {char* name; } ;
struct axp2xx_reg_sc {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;
struct TYPE_3__ {int ocd_data; } ;




 int ENOMEM ;
 int ENXIO ;
 int MTX_DEF ;
 int M_AXP2XX_REG ;
 int M_WAITOK ;
 int M_ZERO ;
 void* axp209_pins ;
 void* axp209_regdefs ;
 void* axp209_sensors ;
 void* axp221_pins ;
 void* axp221_regdefs ;
 void* axp221_sensors ;
 struct axp2xx_reg_sc* axp2xx_reg_attach (int ,scalar_t__,struct axp2xx_regdef*) ;
 int axp2xx_start ;
 int axp_res_spec ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int compat_data ;
 scalar_t__ config_intrhook_establish (TYPE_2__*) ;
 int device_get_nameunit (int ) ;
 struct axp2xx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 void* gpiobus_attach_bus (int ) ;
 struct axp2xx_reg_sc** malloc (int,int ,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 void* nitems (void*) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
axp2xx_attach(device_t dev)
{
 struct axp2xx_softc *sc;
 struct axp2xx_reg_sc *reg;
 struct axp2xx_regdef *regdefs;
 phandle_t rnode, child;
 int i;

 sc = device_get_softc(dev);
 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 if (bus_alloc_resources(dev, axp_res_spec, sc->res) != 0) {
  device_printf(dev, "can't allocate device resources\n");
  return (ENXIO);
 }

 sc->type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 switch (sc->type) {
 case 129:
  sc->pins = axp209_pins;
  sc->npins = nitems(axp209_pins);
  sc->gpiodev = gpiobus_attach_bus(dev);

  sc->sensors = axp209_sensors;
  sc->nsensors = nitems(axp209_sensors);

  regdefs = axp209_regdefs;
  sc->nregs = nitems(axp209_regdefs);
  break;
 case 128:
  sc->pins = axp221_pins;
  sc->npins = nitems(axp221_pins);
  sc->gpiodev = gpiobus_attach_bus(dev);

  sc->sensors = axp221_sensors;
  sc->nsensors = nitems(axp221_sensors);

  regdefs = axp221_regdefs;
  sc->nregs = nitems(axp221_regdefs);
  break;
 }

 sc->regs = malloc(sizeof(struct axp2xx_reg_sc *) * sc->nregs,
     M_AXP2XX_REG, M_WAITOK | M_ZERO);

 sc->intr_hook.ich_func = axp2xx_start;
 sc->intr_hook.ich_arg = dev;

 if (config_intrhook_establish(&sc->intr_hook) != 0)
  return (ENOMEM);


 rnode = ofw_bus_find_child(ofw_bus_get_node(dev), "regulators");
 if (rnode > 0) {
  for (i = 0; i < sc->nregs; i++) {
   child = ofw_bus_find_child(rnode,
       regdefs[i].name);
   if (child == 0)
    continue;
   reg = axp2xx_reg_attach(dev, child, &regdefs[i]);
   if (reg == ((void*)0)) {
    device_printf(dev,
        "cannot attach regulator %s\n",
        regdefs[i].name);
    continue;
   }
   sc->regs[i] = reg;
   if (bootverbose)
    device_printf(dev, "Regulator %s attached\n",
        regdefs[i].name);
  }
 }

 return (0);
}
