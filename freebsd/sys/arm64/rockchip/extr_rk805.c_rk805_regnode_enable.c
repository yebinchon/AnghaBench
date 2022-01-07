
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; int base_dev; } ;
struct regnode {int dummy; } ;
struct TYPE_2__ {int enable_reg; int enable_mask; int name; } ;


 int dprintf (struct rk805_reg_sc*,char*,char*,int ) ;
 struct rk805_reg_sc* regnode_get_softc (struct regnode*) ;
 int rk805_read (int ,int ,int *,int) ;
 int rk805_write (int ,int ,int ) ;

__attribute__((used)) static int
rk805_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct rk805_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 dprintf(sc, "%sabling regulator %s\n",
     enable ? "En" : "Dis",
     sc->def->name);
 rk805_read(sc->base_dev, sc->def->enable_reg, &val, 1);
 if (enable)
  val |= sc->def->enable_mask;
 else
  val &= ~sc->def->enable_mask;
 rk805_write(sc->base_dev, sc->def->enable_reg, val);

 *udelay = 0;

 return (0);
}
