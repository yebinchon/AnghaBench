
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct rk805_reg_sc {TYPE_1__* def; } ;
struct TYPE_2__ {int voltage_min; int voltage_nstep; scalar_t__ voltage_step; } ;


 int EINVAL ;

__attribute__((used)) static int
rk805_regnode_voltage_to_reg(struct rk805_reg_sc *sc, int min_uvolt,
    int max_uvolt, uint8_t *val)
{
 uint8_t nval;
 int nstep, uvolt;

 nval = 0;
 uvolt = sc->def->voltage_min;

 for (nstep = 0; nstep < sc->def->voltage_nstep && uvolt < min_uvolt;
      nstep++) {
  ++nval;
  uvolt += sc->def->voltage_step;
 }
 if (uvolt > max_uvolt)
  return (EINVAL);

 *val = nval;
 return (0);
}
