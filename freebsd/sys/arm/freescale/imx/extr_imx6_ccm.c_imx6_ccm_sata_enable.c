
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCGR5_SATA ;
 int CCM_ANALOG_PLL_ENET ;
 int CCM_ANALOG_PLL_ENET_BYPASS ;
 int CCM_ANALOG_PLL_ENET_ENABLE ;
 int CCM_ANALOG_PLL_ENET_ENABLE_100M ;
 int CCM_ANALOG_PLL_ENET_LOCK ;
 int CCM_ANALOG_PLL_ENET_POWERDOWN ;
 int CCM_CCGR5 ;
 int ETIMEDOUT ;
 int RD4 (int ,int ) ;
 int WR4 (int ,int ,int) ;
 int ccm_sc ;

int
imx6_ccm_sata_enable(void)
{
 uint32_t v;
 int timeout;


 WR4(ccm_sc, CCM_CCGR5, RD4(ccm_sc, CCM_CCGR5) | CCGR5_SATA);


 v = RD4(ccm_sc, CCM_ANALOG_PLL_ENET);
 v &= ~CCM_ANALOG_PLL_ENET_POWERDOWN;
 WR4(ccm_sc, CCM_ANALOG_PLL_ENET, v);

 for (timeout = 100000; timeout > 0; timeout--) {
  if (RD4(ccm_sc, CCM_ANALOG_PLL_ENET) &
     CCM_ANALOG_PLL_ENET_LOCK) {
   break;
  }
 }
 if (timeout <= 0) {
  return ETIMEDOUT;
 }


 v |= CCM_ANALOG_PLL_ENET_ENABLE;
 v &= ~CCM_ANALOG_PLL_ENET_BYPASS;
 WR4(ccm_sc, CCM_ANALOG_PLL_ENET, v);

 v |= CCM_ANALOG_PLL_ENET_ENABLE_100M;
 WR4(ccm_sc, CCM_ANALOG_PLL_ENET, v);

 return 0;
}
