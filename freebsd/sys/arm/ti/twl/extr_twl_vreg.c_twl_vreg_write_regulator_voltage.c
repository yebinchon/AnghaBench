
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct twl_vreg_softc {int sc_dev; int sc_sx; } ;
struct twl_regulator_entry {scalar_t__ num_supp_voltages; int fixed_voltage; int name; int * supp_voltages; } ;


 int EINVAL ;
 int TWL_VREG_ASSERT_LOCKED (struct twl_vreg_softc*) ;
 int TWL_VREG_LOCK_DOWNGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_LOCK_UPGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_VSEL ;
 int device_printf (int ,char*,int ,int,int) ;
 int sx_xlocked (int *) ;
 int twl_vreg_debug ;
 int twl_vreg_disable_regulator (struct twl_vreg_softc*,struct twl_regulator_entry*) ;
 int twl_vreg_enable_regulator (struct twl_vreg_softc*,struct twl_regulator_entry*) ;
 int twl_vreg_millivolt_to_vsel (struct twl_vreg_softc*,struct twl_regulator_entry*,int,int*) ;
 int twl_vreg_write_1 (struct twl_vreg_softc*,struct twl_regulator_entry*,int ,int) ;

__attribute__((used)) static int
twl_vreg_write_regulator_voltage(struct twl_vreg_softc *sc,
    struct twl_regulator_entry *regulator, int millivolts)
{
 int err;
 uint8_t vsel;
 int xlocked;

 TWL_VREG_ASSERT_LOCKED(sc);


 if (millivolts == 0)
  return (twl_vreg_disable_regulator(sc, regulator));




 if (regulator->supp_voltages == ((void*)0) || regulator->num_supp_voltages == 0) {
  if (millivolts != regulator->fixed_voltage)
   return (EINVAL);

  return (twl_vreg_enable_regulator(sc, regulator));
 }


 err = twl_vreg_millivolt_to_vsel(sc, regulator, millivolts, &vsel);
 if (err)
  return (err);



 xlocked = sx_xlocked(&sc->sc_sx);
 if (!xlocked)
  TWL_VREG_LOCK_UPGRADE(sc);



 err = twl_vreg_write_1(sc, regulator, TWL_VREG_VSEL, (vsel & 0x1f));
 if (!err) {
  err = twl_vreg_enable_regulator(sc, regulator);
 }

 if (!xlocked)
  TWL_VREG_LOCK_DOWNGRADE(sc);

 if ((twl_vreg_debug > 1) && !err)
  device_printf(sc->sc_dev, "%s : setting voltage to %dmV (vsel: 0x%x)\n",
      regulator->name, millivolts, vsel);

 return (err);
}
