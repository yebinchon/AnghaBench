
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct as3722_reg_sc {TYPE_1__* def; int base_sc; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; } ;


 int RM1 (int ,int ,int ,int ) ;

__attribute__((used)) static int
as3722_reg_disable(struct as3722_reg_sc *sc)
{
 int rv;

 rv = RM1(sc->base_sc, sc->def->enable_reg,
     sc->def->enable_mask, 0);
 return (rv);
}
