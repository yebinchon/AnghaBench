
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regnode {int dummy; } ;
struct axp2xx_reg_sc {TYPE_1__* def; int base_dev; } ;
struct TYPE_2__ {int voltage_mask; int voltage_reg; int voltage_step; } ;


 int ENXIO ;
 int axp2xx_read (int ,int ,int*,int) ;
 int axp2xx_regnode_reg_to_voltage (struct axp2xx_reg_sc*,int,int*) ;
 struct axp2xx_reg_sc* regnode_get_softc (struct regnode*) ;

__attribute__((used)) static int
axp2xx_regnode_get_voltage(struct regnode *regnode, int *uvolt)
{
 struct axp2xx_reg_sc *sc;
 uint8_t val;

 sc = regnode_get_softc(regnode);

 if (!sc->def->voltage_step)
  return (ENXIO);

 axp2xx_read(sc->base_dev, sc->def->voltage_reg, &val, 1);
 axp2xx_regnode_reg_to_voltage(sc, val & sc->def->voltage_mask, uvolt);

 return (0);
}
