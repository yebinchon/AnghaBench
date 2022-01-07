
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct padctl_softc {int hs_term_range_adj; int hs_squelch_level; int hs_iref_cap; int hs_curr_level_123; int hs_curr_level_0; } ;


 int FUSE_XUSB_CALIB ;
 int FUSE_XUSB_CALIB_HS_CURR_LEVEL_0 (int ) ;
 int FUSE_XUSB_CALIB_HS_CURR_LEVEL_123 (int ) ;
 int FUSE_XUSB_CALIB_HS_IREF_CAP (int ) ;
 int FUSE_XUSB_CALIB_HS_SQUELCH_LEVEL (int ) ;
 int FUSE_XUSB_CALIB_HS_TERM_RANGE_ADJ (int ) ;
 int tegra_fuse_read_4 (int ) ;

__attribute__((used)) static void
load_calibration(struct padctl_softc *sc)
{
 uint32_t reg;


 reg = tegra_fuse_read_4(FUSE_XUSB_CALIB);
 sc->hs_curr_level_0 = FUSE_XUSB_CALIB_HS_CURR_LEVEL_0(reg);
 sc->hs_curr_level_123 = FUSE_XUSB_CALIB_HS_CURR_LEVEL_123(reg);
 sc->hs_iref_cap = FUSE_XUSB_CALIB_HS_IREF_CAP(reg);
 sc->hs_squelch_level = FUSE_XUSB_CALIB_HS_SQUELCH_LEVEL(reg);
 sc->hs_term_range_adj = FUSE_XUSB_CALIB_HS_TERM_RANGE_ADJ(reg);
}
