
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct as3722_softc {int nregs; struct as3722_reg_sc** regs; int dev; } ;
struct as3722_reg_sc {int dummy; } ;
typedef scalar_t__ phandle_t ;
struct TYPE_4__ {char* name; } ;


 int ENXIO ;
 int M_AS3722_REG ;
 int M_WAITOK ;
 int M_ZERO ;
 struct as3722_reg_sc* as3722_attach (struct as3722_softc*,scalar_t__,TYPE_1__*) ;
 TYPE_1__* as3722s_def ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 struct as3722_reg_sc** malloc (int,int ,int) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;

int
as3722_regulator_attach(struct as3722_softc *sc, phandle_t node)
{
 struct as3722_reg_sc *reg;
 phandle_t child, rnode;
 int i;

 rnode = ofw_bus_find_child(node, "regulators");
 if (rnode <= 0) {
  device_printf(sc->dev, " Cannot find regulators subnode\n");
  return (ENXIO);
 }

 sc->nregs = nitems(as3722s_def);
 sc->regs = malloc(sizeof(struct as3722_reg_sc *) * sc->nregs,
     M_AS3722_REG, M_WAITOK | M_ZERO);



 for (i = 0; i < sc->nregs; i++) {
  child = ofw_bus_find_child(rnode, as3722s_def[i].name);
  if (child == 0) {
   if (bootverbose)
    device_printf(sc->dev,
        "Regulator %s missing in DT\n",
        as3722s_def[i].name);
   continue;
  }
  reg = as3722_attach(sc, child, as3722s_def + i);
  if (reg == ((void*)0)) {
   device_printf(sc->dev, "Cannot attach regulator: %s\n",
       as3722s_def[i].name);
   return (ENXIO);
  }
  sc->regs[i] = reg;
 }
 return (0);
}
