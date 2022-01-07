
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct regnode {int dummy; } ;
struct as3722_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {scalar_t__ id; int nranges; int ranges; } ;


 scalar_t__ AS3722_LDO6_SEL_BYPASS ;
 scalar_t__ AS3722_REG_ID_LDO6 ;
 int ENOENT ;
 int as3722_read_sel (struct as3722_reg_sc*,scalar_t__*) ;
 struct as3722_reg_sc* regnode_get_softc (struct regnode*) ;
 int regulator_range_sel8_to_volt (int ,int ,scalar_t__,int*) ;

__attribute__((used)) static int
as3722_regnode_get_volt(struct regnode *regnode, int *uvolt)
{
 struct as3722_reg_sc *sc;
 uint8_t sel;
 int rv;

 sc = regnode_get_softc(regnode);
 rv = as3722_read_sel(sc, &sel);
 if (rv != 0)
  return (rv);


 if (sc->def->id == AS3722_REG_ID_LDO6 && sel == AS3722_LDO6_SEL_BYPASS)
  return (ENOENT);
 rv = regulator_range_sel8_to_volt(sc->def->ranges, sc->def->nranges,
     sel, uvolt);
 return (rv);
}
