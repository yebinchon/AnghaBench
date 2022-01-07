
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regnode {int dummy; } ;
struct axp8xx_reg_sc {TYPE_1__* def; int base_dev; } ;
struct TYPE_2__ {scalar_t__ voltage_step1; int voltage_reg; int name; } ;


 int ENXIO ;
 int ERANGE ;
 scalar_t__ axp8xx_regnode_voltage_to_reg (struct axp8xx_reg_sc*,int,int,int *) ;
 int axp8xx_write (int ,int ,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int ,int,int) ;
 int regnode_get_name (struct regnode*) ;
 struct axp8xx_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
axp8xx_regnode_set_voltage(struct regnode *regnode, int min_uvolt,
    int max_uvolt, int *udelay)
{
 struct axp8xx_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 if (bootverbose)
  device_printf(sc->base_dev, "Setting %s (%s) to %d<->%d\n",
      regnode_get_name(regnode),
      sc->def->name,
      min_uvolt, max_uvolt);

 if (sc->def->voltage_step1 == 0)
  return (ENXIO);

 if (axp8xx_regnode_voltage_to_reg(sc, min_uvolt, max_uvolt, &val) != 0)
  return (ERANGE);

 axp8xx_write(sc->base_dev, sc->def->voltage_reg, val);

 *udelay = 0;

 return (0);
}
