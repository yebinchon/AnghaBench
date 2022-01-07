
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int CCGR_CLK_MODE_ALWAYS ;
 int CCGR_USB_PHY_CLK ;
 int CCMC_CSCMR1 ;
 int CSCMR1_USBPHY_CLK_SEL_SHIFT ;
 scalar_t__ IMXSOC_51 ;
 scalar_t__ IMXSOC_53 ;
 int __CCGR_NUM (int,int) ;
 int ccm_read_4 (int ,int ) ;
 int ccm_softc ;
 int ccm_write_4 (int ,int ,int) ;
 int imx51_clk_gating (int ,int ) ;
 scalar_t__ imx_soc_type () ;

void
imx_ccm_usbphy_enable(device_t dev)
{
 uint32_t regval;






 if (imx_soc_type() == IMXSOC_53) {
  regval = ccm_read_4(ccm_softc, CCMC_CSCMR1);
  regval |= 1 << CSCMR1_USBPHY_CLK_SEL_SHIFT;
  ccm_write_4(ccm_softc, CCMC_CSCMR1, regval);
 }




 if (imx_soc_type() == IMXSOC_51) {
  imx51_clk_gating(CCGR_USB_PHY_CLK, CCGR_CLK_MODE_ALWAYS);
  return;
 }
 if (imx_soc_type() == IMXSOC_53) {
  imx51_clk_gating(__CCGR_NUM(4, 5), CCGR_CLK_MODE_ALWAYS);
  imx51_clk_gating(__CCGR_NUM(4, 6), CCGR_CLK_MODE_ALWAYS);
  return;
 }
}
