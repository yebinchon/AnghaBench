
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int name; int voltage_reg; int voltage_step; } ;


 int ENXIO ;
 int ERANGE ;
 int dprintf (struct rk805_reg_sc*,char*,int ,int,...) ;
 struct rk805_reg_sc* regnode_get_softc (struct regnode*) ;
 int rk805_read (int ,int ,int *,int) ;
 int rk805_regnode_reg_to_voltage (struct rk805_reg_sc*,int ,int*) ;
 scalar_t__ rk805_regnode_voltage_to_reg (struct rk805_reg_sc*,int,int,int *) ;
 int rk805_write (int ,int ,int ) ;

__attribute__((used)) static int
rk805_regnode_set_voltage(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
 struct rk805_reg_sc *sc;
 uint8_t val;
 int uvolt;

 sc = regnode_get_softc(regnode);

 if (!sc->def->voltage_step)
  return (ENXIO);

 dprintf(sc, "Setting %s to %d<->%d uvolts\n",
     sc->def->name,
     min_uvolt,
     max_uvolt);
 rk805_read(sc->base_dev, sc->def->voltage_reg, &val, 1);
 if (rk805_regnode_voltage_to_reg(sc, min_uvolt, max_uvolt, &val) != 0)
  return (ERANGE);

 rk805_write(sc->base_dev, sc->def->voltage_reg, val);

 rk805_read(sc->base_dev, sc->def->voltage_reg, &val, 1);

 *udelay = 0;

 rk805_regnode_reg_to_voltage(sc, val, &uvolt);
 dprintf(sc, "Regulator %s set to %d uvolt\n",
   sc->def->name,
   uvolt);

 return (0);
}
