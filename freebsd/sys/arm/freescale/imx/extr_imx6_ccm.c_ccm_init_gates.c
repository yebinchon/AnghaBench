
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccm_softc {int dummy; } ;


 int CCGR0_ABPHDMA ;
 int CCGR0_AIPS_TZ1 ;
 int CCGR0_AIPS_TZ2 ;
 int CCGR1_ECSPI1 ;
 int CCGR1_ECSPI2 ;
 int CCGR1_ECSPI3 ;
 int CCGR1_ECSPI4 ;
 int CCGR1_ECSPI5 ;
 int CCGR1_ENET ;
 int CCGR1_EPIT1 ;
 int CCGR1_GPT ;
 int CCGR2_I2C1 ;
 int CCGR2_I2C2 ;
 int CCGR2_I2C3 ;
 int CCGR2_IIM ;
 int CCGR2_IOMUX_IPT ;
 int CCGR2_IPMUX1 ;
 int CCGR2_IPMUX2 ;
 int CCGR2_IPMUX3 ;
 int CCGR2_IPSYNC_IP2APB_TZASC1 ;
 int CCGR2_IPSYNC_IP2APB_TZASC2 ;
 int CCGR2_IPSYNC_VDOA ;
 int CCGR3_CG11 ;
 int CCGR3_CG13 ;
 int CCGR3_MMDC_CORE_ACLK_FAST ;
 int CCGR3_MMDC_CORE_IPG ;
 int CCGR3_OCRAM ;
 int CCGR4_PL301_MX6QFAST1_S133 ;
 int CCGR4_PL301_MX6QPER1_BCH ;
 int CCGR4_PL301_MX6QPER2_MAIN ;
 int CCGR5_SDMA ;
 int CCGR5_SSI1 ;
 int CCGR5_SSI2 ;
 int CCGR5_SSI3 ;
 int CCGR5_UART ;
 int CCGR5_UART_SERIAL ;
 int CCGR6_USBOH3 ;
 int CCGR6_USDHC1 ;
 int CCGR6_USDHC2 ;
 int CCGR6_USDHC3 ;
 int CCGR6_USDHC4 ;
 int CCM_CCGR0 ;
 int CCM_CCGR1 ;
 int CCM_CCGR2 ;
 int CCM_CCGR3 ;
 int CCM_CCGR4 ;
 int CCM_CCGR5 ;
 int CCM_CCGR6 ;
 int WR4 (struct ccm_softc*,int ,int) ;

__attribute__((used)) static void
ccm_init_gates(struct ccm_softc *sc)
{
 uint32_t reg;


 reg = CCGR0_AIPS_TZ1 | CCGR0_AIPS_TZ2 | CCGR0_ABPHDMA;
 WR4(sc, CCM_CCGR0, reg);


 reg = CCGR1_ENET | CCGR1_EPIT1 | CCGR1_GPT | CCGR1_ECSPI1 |
     CCGR1_ECSPI2 | CCGR1_ECSPI3 | CCGR1_ECSPI4 | CCGR1_ECSPI5;
 WR4(sc, CCM_CCGR1, reg);


 reg = CCGR2_I2C1 | CCGR2_I2C2 | CCGR2_I2C3 | CCGR2_IIM |
     CCGR2_IOMUX_IPT | CCGR2_IPMUX1 | CCGR2_IPMUX2 | CCGR2_IPMUX3 |
     CCGR2_IPSYNC_IP2APB_TZASC1 | CCGR2_IPSYNC_IP2APB_TZASC2 |
     CCGR2_IPSYNC_VDOA;
 WR4(sc, CCM_CCGR2, reg);


 reg = CCGR3_OCRAM | CCGR3_MMDC_CORE_IPG |
     CCGR3_MMDC_CORE_ACLK_FAST | CCGR3_CG11 | CCGR3_CG13;
 WR4(sc, CCM_CCGR3, reg);


 reg = CCGR4_PL301_MX6QFAST1_S133 |
     CCGR4_PL301_MX6QPER1_BCH | CCGR4_PL301_MX6QPER2_MAIN;
 WR4(sc, CCM_CCGR4, reg);


 reg = CCGR5_SDMA | CCGR5_SSI1 | CCGR5_SSI2 | CCGR5_SSI3 |
     CCGR5_UART | CCGR5_UART_SERIAL;
 WR4(sc, CCM_CCGR5, reg);


 reg = CCGR6_USBOH3 | CCGR6_USDHC1 | CCGR6_USDHC2 |
     CCGR6_USDHC3 | CCGR6_USDHC4;
 WR4(sc, CCM_CCGR6, reg);
}
