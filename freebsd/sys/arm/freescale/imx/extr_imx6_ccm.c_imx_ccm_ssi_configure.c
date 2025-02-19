
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccm_softc {int dummy; } ;
typedef int device_t ;


 int CCM_CS1CDR ;
 int CCM_CS2CDR ;
 int CCM_CSCMR1 ;
 int RD4 (struct ccm_softc*,int ) ;
 int SSI1_CLK_PODF_SHIFT ;
 int SSI1_CLK_PRED_SHIFT ;
 int SSI1_CLK_SEL_S ;
 int SSI2_CLK_PODF_SHIFT ;
 int SSI2_CLK_PRED_SHIFT ;
 int SSI2_CLK_SEL_S ;
 int SSI3_CLK_PODF_SHIFT ;
 int SSI3_CLK_PRED_SHIFT ;
 int SSI3_CLK_SEL_S ;
 int SSI_CLK_PODF_MASK ;
 int SSI_CLK_PRED_MASK ;
 int SSI_CLK_SEL_M ;
 int SSI_CLK_SEL_PLL4 ;
 int WR4 (struct ccm_softc*,int ,int) ;
 struct ccm_softc* ccm_sc ;

void
imx_ccm_ssi_configure(device_t _ssidev)
{
 struct ccm_softc *sc;
 uint32_t reg;

 sc = ccm_sc;






 reg = RD4(sc, CCM_CSCMR1);
 reg &= ~(SSI_CLK_SEL_M << SSI1_CLK_SEL_S);
 reg |= (SSI_CLK_SEL_PLL4 << SSI1_CLK_SEL_S);
 reg &= ~(SSI_CLK_SEL_M << SSI2_CLK_SEL_S);
 reg |= (SSI_CLK_SEL_PLL4 << SSI2_CLK_SEL_S);
 reg &= ~(SSI_CLK_SEL_M << SSI3_CLK_SEL_S);
 reg |= (SSI_CLK_SEL_PLL4 << SSI3_CLK_SEL_S);
 WR4(sc, CCM_CSCMR1, reg);







 reg = RD4(sc, CCM_CS1CDR);

 reg &= ~(SSI_CLK_PODF_MASK << SSI1_CLK_PODF_SHIFT);
 reg &= ~(SSI_CLK_PODF_MASK << SSI3_CLK_PODF_SHIFT);
 reg |= (0x1 << SSI1_CLK_PODF_SHIFT);
 reg |= (0x1 << SSI3_CLK_PODF_SHIFT);

 reg &= ~(SSI_CLK_PRED_MASK << SSI1_CLK_PRED_SHIFT);
 reg &= ~(SSI_CLK_PRED_MASK << SSI3_CLK_PRED_SHIFT);
 reg |= (0x3 << SSI1_CLK_PRED_SHIFT);
 reg |= (0x3 << SSI3_CLK_PRED_SHIFT);
 WR4(sc, CCM_CS1CDR, reg);


 reg = RD4(sc, CCM_CS2CDR);

 reg &= ~(SSI_CLK_PODF_MASK << SSI2_CLK_PODF_SHIFT);
 reg |= (0x1 << SSI2_CLK_PODF_SHIFT);

 reg &= ~(SSI_CLK_PRED_MASK << SSI2_CLK_PRED_SHIFT);
 reg |= (0x3 << SSI2_CLK_PRED_SHIFT);
 WR4(sc, CCM_CS2CDR, reg);
}
