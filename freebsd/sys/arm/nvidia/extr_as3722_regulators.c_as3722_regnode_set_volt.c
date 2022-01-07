
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regnode {int dummy; } ;
struct as3722_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int nranges; int ranges; } ;


 int as3722_write_sel (struct as3722_reg_sc*,int ) ;
 struct as3722_reg_sc* regnode_get_softc (struct regnode*) ;
 int regulator_range_volt_to_sel8 (int ,int ,int,int,int *) ;

__attribute__((used)) static int
as3722_regnode_set_volt(struct regnode *regnode, int min_uvolt, int max_uvolt,
    int *udelay)
{
 struct as3722_reg_sc *sc;
 uint8_t sel;
 int rv;

 sc = regnode_get_softc(regnode);

 *udelay = 0;
 rv = regulator_range_volt_to_sel8(sc->def->ranges, sc->def->nranges,
     min_uvolt, max_uvolt, &sel);
 if (rv != 0)
  return (rv);
 rv = as3722_write_sel(sc, sel);
 return (rv);

}
