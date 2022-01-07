
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCMC_CCGR (int ) ;
 int CCMR_CCGR_MODULE (int) ;
 int CCMR_CCGR_NSOURCE ;
 int ccm_read_4 (int ,int ) ;
 int ccm_softc ;

int
imx51_get_clk_gating(int clk_src)
{
 uint32_t reg;

 reg = ccm_read_4(ccm_softc,
     CCMC_CCGR(CCMR_CCGR_MODULE(clk_src)));
 return ((reg >> (clk_src % CCMR_CCGR_NSOURCE) * 2) & 0x03);
}
