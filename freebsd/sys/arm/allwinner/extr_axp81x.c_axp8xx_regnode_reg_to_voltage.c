
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct axp8xx_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int voltage_nstep1; int voltage_min; int voltage_step1; int voltage_step2; } ;



__attribute__((used)) static void
axp8xx_regnode_reg_to_voltage(struct axp8xx_reg_sc *sc, uint8_t val, int *uv)
{
 if (val < sc->def->voltage_nstep1)
  *uv = sc->def->voltage_min + val * sc->def->voltage_step1;
 else
  *uv = sc->def->voltage_min +
      (sc->def->voltage_nstep1 * sc->def->voltage_step1) +
      ((val - sc->def->voltage_nstep1) * sc->def->voltage_step2);
 *uv *= 1000;
}
