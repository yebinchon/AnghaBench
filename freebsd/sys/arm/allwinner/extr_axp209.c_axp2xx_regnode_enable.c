
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regnode {int dummy; } ;
struct axp2xx_reg_sc {TYPE_1__* def; int base_dev; } ;
struct TYPE_2__ {int enable_reg; int enable_mask; } ;


 int axp2xx_read (int ,int ,int *,int) ;
 int axp2xx_write (int ,int ,int ) ;
 struct axp2xx_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
axp2xx_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct axp2xx_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 axp2xx_read(sc->base_dev, sc->def->enable_reg, &val, 1);
 if (enable)
  val |= sc->def->enable_mask;
 else
  val &= ~sc->def->enable_mask;
 axp2xx_write(sc->base_dev, sc->def->enable_reg, val);

 *udelay = 0;

 return (0);
}
