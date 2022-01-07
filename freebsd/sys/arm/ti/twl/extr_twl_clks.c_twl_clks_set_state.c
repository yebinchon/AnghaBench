
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct twl_clks_softc {int sc_dev; int sc_pdev; int sc_sx; } ;
struct twl_clk_entry {int name; } ;


 int EINVAL ;
 int TWL4030_P1_GRP ;
 int TWL4030_P2_GRP ;
 int TWL4030_P3_GRP ;
 int TWL6030_P1_GRP ;
 int TWL6030_P2_GRP ;
 int TWL6030_P3_GRP ;
 int TWL_CLKS_ASSERT_LOCKED (struct twl_clks_softc*) ;
 int TWL_CLKS_GRP ;
 int TWL_CLKS_LOCK_DOWNGRADE (struct twl_clks_softc*) ;
 int TWL_CLKS_LOCK_UPGRADE (struct twl_clks_softc*) ;
 int TWL_CLKS_STATE ;
 int device_printf (int ,char*,int ,char*) ;
 int sx_xlocked (int *) ;
 int twl_clks_debug ;
 int twl_clks_read_1 (struct twl_clks_softc*,struct twl_clk_entry*,int ,int*) ;
 int twl_clks_write_1 (struct twl_clks_softc*,struct twl_clk_entry*,int ,int) ;
 scalar_t__ twl_is_4030 (int ) ;
 scalar_t__ twl_is_6025 (int ) ;
 scalar_t__ twl_is_6030 (int ) ;

__attribute__((used)) static int
twl_clks_set_state(struct twl_clks_softc *sc, struct twl_clk_entry *clk,
 int enable)
{
 int xlocked;
 int err;
 uint8_t grp;

 TWL_CLKS_ASSERT_LOCKED(sc);


 xlocked = sx_xlocked(&sc->sc_sx);
 if (!xlocked)
  TWL_CLKS_LOCK_UPGRADE(sc);

 err = twl_clks_read_1(sc, clk, TWL_CLKS_GRP, &grp);
 if (err)
  goto done;

 if (twl_is_4030(sc->sc_pdev)) {




  if (enable)
   grp |= TWL4030_P1_GRP;
  else
   grp &= ~(TWL4030_P1_GRP | TWL4030_P2_GRP | TWL4030_P3_GRP);

  err = twl_clks_write_1(sc, clk, TWL_CLKS_GRP, grp);

 } else if (twl_is_6030(sc->sc_pdev) || twl_is_6025(sc->sc_pdev)) {


  if (twl_is_6030(sc->sc_pdev) && !(grp & TWL6030_P1_GRP)) {
   grp |= TWL6030_P1_GRP;
   err = twl_clks_write_1(sc, clk, TWL_CLKS_GRP, grp);
   if (err)
    goto done;
  }


  if (twl_is_6030(sc->sc_pdev))
   grp = TWL6030_P1_GRP | TWL6030_P2_GRP | TWL6030_P3_GRP;
  else
   grp = 0x00;


  if (enable)
   err = twl_clks_write_1(sc, clk, TWL_CLKS_STATE, (grp << 5) | 0x01);
  else
   err = twl_clks_write_1(sc, clk, TWL_CLKS_STATE, (grp << 5));

 } else {

  err = EINVAL;
 }

done:
 if (!xlocked)
  TWL_CLKS_LOCK_DOWNGRADE(sc);

 if ((twl_clks_debug > 1) && !err)
  device_printf(sc->sc_dev, "%s : %sabled\n", clk->name,
   enable ? "en" : "dis");

 return (err);
}
