
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int voltage_nstep; int voltage_min; int voltage_step; } ;



__attribute__((used)) static void
rk805_regnode_reg_to_voltage(struct rk805_reg_sc *sc, uint8_t val, int *uv)
{
 if (val < sc->def->voltage_nstep)
  *uv = sc->def->voltage_min + val * sc->def->voltage_step;
 else
  *uv = sc->def->voltage_min +
         (sc->def->voltage_nstep * sc->def->voltage_step);
}
