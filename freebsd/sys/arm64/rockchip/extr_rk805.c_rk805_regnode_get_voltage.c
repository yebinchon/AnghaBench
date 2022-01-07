
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int voltage_mask; int name; int voltage_reg; int voltage_step; } ;


 int ENXIO ;
 int dprintf (struct rk805_reg_sc*,char*,int ,int) ;
 struct rk805_reg_sc* regnode_get_softc (struct regnode*) ;
 int rk805_read (int ,int ,int*,int) ;
 int rk805_regnode_reg_to_voltage (struct rk805_reg_sc*,int,int*) ;

__attribute__((used)) static int
rk805_regnode_get_voltage(struct regnode *regnode, int *uvolt)
{
 struct rk805_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 if (!sc->def->voltage_step)
  return (ENXIO);

 rk805_read(sc->base_dev, sc->def->voltage_reg, &val, 1);
 rk805_regnode_reg_to_voltage(sc, val & sc->def->voltage_mask, uvolt);

 dprintf(sc, "Regulator %s is at %d uvolt\n",
   sc->def->name,
   *uvolt);

 return (0);
}
