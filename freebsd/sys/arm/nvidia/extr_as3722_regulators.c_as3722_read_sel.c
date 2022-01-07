
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct as3722_reg_sc {TYPE_1__* def; int base_sc; } ;
struct TYPE_2__ {int volt_vsel_mask; int volt_reg; } ;


 int RD1 (int ,int ,int*) ;
 int ffs (int) ;

__attribute__((used)) static int
as3722_read_sel(struct as3722_reg_sc *sc, uint8_t *sel)
{
 int rv;

 rv = RD1(sc->base_sc, sc->def->volt_reg, sel);
 if (rv != 0)
  return (rv);
 *sel &= sc->def->volt_vsel_mask;
 *sel >>= ffs(sc->def->volt_vsel_mask) - 1;
 return (0);
}
