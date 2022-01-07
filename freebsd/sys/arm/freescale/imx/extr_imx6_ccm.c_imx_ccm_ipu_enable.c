
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccm_softc {int dummy; } ;


 int CCGR3_IPU1_DI0 ;
 int CCGR3_IPU1_IPU ;
 int CCGR3_IPU2_DI0 ;
 int CCGR3_IPU2_IPU ;
 int CCM_CCGR3 ;
 int RD4 (struct ccm_softc*,int ) ;
 int WR4 (struct ccm_softc*,int ,int) ;
 struct ccm_softc* ccm_sc ;

void
imx_ccm_ipu_enable(int ipu)
{
 struct ccm_softc *sc;
 uint32_t reg;

 sc = ccm_sc;
 reg = RD4(sc, CCM_CCGR3);
 if (ipu == 1)
  reg |= CCGR3_IPU1_IPU | CCGR3_IPU1_DI0;
 else
  reg |= CCGR3_IPU2_IPU | CCGR3_IPU2_DI0;
 WR4(sc, CCM_CCGR3, reg);
}
