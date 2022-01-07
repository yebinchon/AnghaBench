
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct axp8xx_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int voltage_min; int voltage_nstep1; int voltage_step1; int voltage_nstep2; int voltage_step2; } ;


 int EINVAL ;

__attribute__((used)) static int
axp8xx_regnode_voltage_to_reg(struct axp8xx_reg_sc *sc, int min_uvolt,
    int max_uvolt, uint8_t *val)
{
 uint8_t nval;
 int nstep, uvolt;

 nval = 0;
 uvolt = sc->def->voltage_min * 1000;

 for (nstep = 0; nstep < sc->def->voltage_nstep1 && uvolt < min_uvolt;
      nstep++) {
  ++nval;
  uvolt += (sc->def->voltage_step1 * 1000);
 }
 for (nstep = 0; nstep < sc->def->voltage_nstep2 && uvolt < min_uvolt;
      nstep++) {
  ++nval;
  uvolt += (sc->def->voltage_step2 * 1000);
 }
 if (uvolt > max_uvolt)
  return (EINVAL);

 *val = nval;
 return (0);
}
