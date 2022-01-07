
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regnode {int dummy; } ;
struct axp8xx_reg_sc {TYPE_1__* def; int base_dev; } ;
struct TYPE_2__ {int enable_mask; int enable_value; int disable_value; int enable_reg; int name; } ;


 int axp8xx_read (int ,int ,int*,int) ;
 int axp8xx_write (int ,int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,char*,int ,int ) ;
 int regnode_get_name (struct regnode*) ;
 struct axp8xx_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
axp8xx_regnode_enable(struct regnode *regnode, bool enable, int *udelay)
{
 struct axp8xx_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 if (bootverbose)
  device_printf(sc->base_dev, "%sable %s (%s)\n",
      enable ? "En" : "Dis",
      regnode_get_name(regnode),
      sc->def->name);

 axp8xx_read(sc->base_dev, sc->def->enable_reg, &val, 1);
 val &= ~sc->def->enable_mask;
 if (enable)
  val |= sc->def->enable_value;
 else {
  if (sc->def->disable_value)
   val |= sc->def->disable_value;
  else
   val &= ~sc->def->enable_value;
 }
 axp8xx_write(sc->base_dev, sc->def->enable_reg, val);

 *udelay = 0;

 return (0);
}
