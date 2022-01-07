
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct as3722_reg_sc {TYPE_1__* def; int base_sc; } ;
struct TYPE_2__ {int ext_enable_mask; int ext_enable_reg; } ;


 int RM1 (int ,int ,int ,int) ;
 int ffs (int ) ;

__attribute__((used)) static int
as3722_reg_extreg_setup(struct as3722_reg_sc *sc, int ext_pwr_ctrl)
{
 uint8_t val;
 int rv;

 val = ext_pwr_ctrl << (ffs(sc->def->ext_enable_mask) - 1);
 rv = RM1(sc->base_sc, sc->def->ext_enable_reg,
     sc->def->ext_enable_mask, val);
 return (rv);
}
