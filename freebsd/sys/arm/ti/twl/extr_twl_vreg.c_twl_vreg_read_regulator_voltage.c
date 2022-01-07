
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct twl_vreg_softc {int sc_dev; int sc_sx; } ;
struct twl_regulator_entry {int* supp_voltages; int num_supp_voltages; int fixed_voltage; int name; } ;


 int EINVAL ;
 int TWL_VREG_ASSERT_LOCKED (struct twl_vreg_softc*) ;
 int TWL_VREG_LOCK_DOWNGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_LOCK_UPGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_VSEL ;
 int UNDF ;
 int device_printf (int ,char*,int ,int,int) ;
 int sx_xlocked (int *) ;
 int twl_vreg_debug ;
 int twl_vreg_is_regulator_enabled (struct twl_vreg_softc*,struct twl_regulator_entry*,int*) ;
 int twl_vreg_read_1 (struct twl_vreg_softc*,struct twl_regulator_entry*,int ,int*) ;

__attribute__((used)) static int
twl_vreg_read_regulator_voltage(struct twl_vreg_softc *sc,
    struct twl_regulator_entry *regulator, int *millivolts)
{
 int err;
 int en = 0;
 int xlocked;
 uint8_t vsel;

 TWL_VREG_ASSERT_LOCKED(sc);




 xlocked = sx_xlocked(&sc->sc_sx);
 if (!xlocked)
  TWL_VREG_LOCK_UPGRADE(sc);



 err = twl_vreg_is_regulator_enabled(sc, regulator, &en);
 if (err)
  goto done;

 *millivolts = 0;
 if (!en)
  goto done;



 if (regulator->supp_voltages == ((void*)0) || !regulator->num_supp_voltages) {
  *millivolts = regulator->fixed_voltage;
  goto done;
 }


 err = twl_vreg_read_1(sc, regulator, TWL_VREG_VSEL, &vsel);
 if (err)
  goto done;

 vsel &= (regulator->num_supp_voltages - 1);
 if (regulator->supp_voltages[vsel] == UNDF) {
  err = EINVAL;
  goto done;
 }

 *millivolts = regulator->supp_voltages[vsel];

done:
 if (!xlocked)
  TWL_VREG_LOCK_DOWNGRADE(sc);

 if ((twl_vreg_debug > 1) && !err)
  device_printf(sc->sc_dev, "%s : reading voltage is %dmV (vsel: 0x%x)\n",
      regulator->name, *millivolts, vsel);

 return (err);
}
