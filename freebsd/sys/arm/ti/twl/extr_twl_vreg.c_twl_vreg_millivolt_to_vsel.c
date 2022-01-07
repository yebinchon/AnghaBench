
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct twl_vreg_softc {int dummy; } ;
struct twl_regulator_entry {scalar_t__* supp_voltages; unsigned int num_supp_voltages; } ;


 int EINVAL ;
 int TWL_VREG_ASSERT_LOCKED (struct twl_vreg_softc*) ;
 scalar_t__ UNDF ;
 int abs (int) ;

__attribute__((used)) static int
twl_vreg_millivolt_to_vsel(struct twl_vreg_softc *sc,
 struct twl_regulator_entry *regulator, int millivolts, uint8_t *vsel)
{
 int delta, smallest_delta;
 unsigned i, closest_idx;

 TWL_VREG_ASSERT_LOCKED(sc);

 if (regulator->supp_voltages == ((void*)0))
  return (EINVAL);


 closest_idx = 0;
 smallest_delta = 0x7fffffff;
 for (i = 0; i < regulator->num_supp_voltages; i++) {


  if (regulator->supp_voltages[i] == UNDF)
   continue;


  delta = millivolts - (int)regulator->supp_voltages[i];
  if (abs(delta) < smallest_delta) {
   smallest_delta = abs(delta);
   closest_idx = i;
  }
 }




 if ((smallest_delta > 100) && (closest_idx < 0x100))
  return (EINVAL);

 *vsel = closest_idx;
 return (0);
}
