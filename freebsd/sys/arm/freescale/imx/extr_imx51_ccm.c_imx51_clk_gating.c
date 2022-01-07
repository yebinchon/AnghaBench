
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCMC_CCGR (int) ;
 int CCMR_CCGR_MODULE (int) ;
 int CCMR_CCGR_NSOURCE ;
 int ccm_read_4 (int ,int ) ;
 int ccm_softc ;
 int ccm_write_4 (int ,int ,int) ;

void
imx51_clk_gating(int clk_src, int mode)
{
 int field, group;
 uint32_t reg;

 group = CCMR_CCGR_MODULE(clk_src);
 field = clk_src % CCMR_CCGR_NSOURCE;
 reg = ccm_read_4(ccm_softc, CCMC_CCGR(group));
 reg &= ~(0x03 << field * 2);
 reg |= (mode << field * 2);
 ccm_write_4(ccm_softc, CCMC_CCGR(group), reg);
}
