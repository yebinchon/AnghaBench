
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int CCGR_CLK_MODE_ALWAYS ;
 int CCGR_USBOH3_60M_CLK ;
 int CCGR_USBOH3_IPG_AHB_CLK ;
 int CCMC_CSCDR1 ;
 int CCMC_CSCMR1 ;
 int CSCDR1_USBOH3_CLK_PODF_MASK ;
 int CSCDR1_USBOH3_CLK_PODF_SHIFT ;
 int CSCDR1_USBOH3_CLK_PRED_MASK ;
 int CSCDR1_USBOH3_CLK_PRED_SHIFT ;
 int CSCMR1_USBOH3_CLK_SEL_MASK ;
 int CSCMR1_USBOH3_CLK_SEL_SHIFT ;
 int ccm_read_4 (int ,int ) ;
 int ccm_softc ;
 int ccm_write_4 (int ,int ,int) ;
 int imx51_clk_gating (int ,int ) ;

void
imx_ccm_usb_enable(device_t dev)
{
 uint32_t regval;





 regval = ccm_read_4(ccm_softc, CCMC_CSCMR1);
 regval &= ~CSCMR1_USBOH3_CLK_SEL_MASK;
 regval |= 1 << CSCMR1_USBOH3_CLK_SEL_SHIFT;
 ccm_write_4(ccm_softc, CCMC_CSCMR1, regval);




 regval = ccm_read_4(ccm_softc, CCMC_CSCDR1);
 regval &= ~CSCDR1_USBOH3_CLK_PODF_MASK;
 regval &= ~CSCDR1_USBOH3_CLK_PRED_MASK;
 regval |= 4 << CSCDR1_USBOH3_CLK_PRED_SHIFT;
 regval |= 1 << CSCDR1_USBOH3_CLK_PODF_SHIFT;
 ccm_write_4(ccm_softc, CCMC_CSCDR1, regval);




 imx51_clk_gating(CCGR_USBOH3_IPG_AHB_CLK, CCGR_CLK_MODE_ALWAYS);
 imx51_clk_gating(CCGR_USBOH3_60M_CLK, CCGR_CLK_MODE_ALWAYS);
}
