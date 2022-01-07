
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct twl_vreg_softc {int sc_pdev; int sc_sx; } ;
struct twl_regulator_entry {int dummy; } ;


 int EINVAL ;
 int TWL4030_P1_GRP ;
 int TWL6030_P1_GRP ;
 int TWL_VREG_ASSERT_LOCKED (struct twl_vreg_softc*) ;
 int TWL_VREG_GRP ;
 int TWL_VREG_LOCK_DOWNGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_LOCK_UPGRADE (struct twl_vreg_softc*) ;
 int TWL_VREG_STATE ;
 int sx_xlocked (int *) ;
 scalar_t__ twl_is_4030 (int ) ;
 scalar_t__ twl_is_6025 (int ) ;
 scalar_t__ twl_is_6030 (int ) ;
 int twl_vreg_read_1 (struct twl_vreg_softc*,struct twl_regulator_entry*,int ,int*) ;

__attribute__((used)) static int
twl_vreg_is_regulator_enabled(struct twl_vreg_softc *sc,
 struct twl_regulator_entry *regulator, int *enabled)
{
 int err;
 uint8_t grp;
 uint8_t state;
 int xlocked;

 if (enabled == ((void*)0))
  return (EINVAL);

 TWL_VREG_ASSERT_LOCKED(sc);

 xlocked = sx_xlocked(&sc->sc_sx);
 if (!xlocked)
  TWL_VREG_LOCK_UPGRADE(sc);


 if (twl_is_4030(sc->sc_pdev)) {

  err = twl_vreg_read_1(sc, regulator, TWL_VREG_GRP, &state);
  if (err)
   goto done;

  *enabled = (state & TWL4030_P1_GRP);

 } else if (twl_is_6030(sc->sc_pdev) || twl_is_6025(sc->sc_pdev)) {


  if (twl_is_6030(sc->sc_pdev)) {
   err = twl_vreg_read_1(sc, regulator, TWL_VREG_GRP, &grp);
   if (err)
    goto done;

   if (!(grp & TWL6030_P1_GRP)) {
    *enabled = 0;
    goto done;
   }
  }


  err = twl_vreg_read_1(sc, regulator, TWL_VREG_STATE, &state);
  if (err)
   goto done;

  *enabled = ((state & 0x0C) == 0x04);

 } else {
  err = EINVAL;
 }

done:
 if (!xlocked)
  TWL_VREG_LOCK_DOWNGRADE(sc);

 return (err);
}
