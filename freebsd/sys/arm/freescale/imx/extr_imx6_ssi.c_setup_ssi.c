
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int DC4_DC0_M ;
 int DC4_DC0_S ;
 int PM7_PM0_M ;
 int PM7_PM0_S ;
 int READ4 (struct sc_info*,int ) ;
 int SCR_I2S_MODE_M ;
 int SCR_I2S_MODE_S ;
 int SCR_NET ;
 int SCR_SSIEN ;
 int SCR_SYN ;
 int SCR_TE ;
 int SFCSR_TFWM0_M ;
 int SFCSR_TFWM0_S ;
 int SSI_SCR ;
 int SSI_SFCSR ;
 int SSI_STCCR ;
 int SSI_STCR ;
 int STCCR_DIV2 ;
 int STCCR_PSR ;
 int STCR_TEFS ;
 int STCR_TFDIR ;
 int STCR_TFEN0 ;
 int STCR_TFEN1 ;
 int STCR_TFSI ;
 int STCR_TFSL ;
 int STCR_TSCKP ;
 int STCR_TSHFD ;
 int STCR_TXBIT0 ;
 int STCR_TXDIR ;
 int WL3_WL0_M ;
 int WL3_WL0_S ;
 int WRITE4 (struct sc_info*,int ,int) ;

__attribute__((used)) static void
setup_ssi(struct sc_info *sc)
{
 int reg;

 reg = READ4(sc, SSI_STCCR);
 reg &= ~(WL3_WL0_M << WL3_WL0_S);
 reg |= (0xb << WL3_WL0_S);
 reg &= ~(DC4_DC0_M << DC4_DC0_S);
 reg |= (1 << DC4_DC0_S);
 reg &= ~(STCCR_DIV2);
 reg &= ~(STCCR_PSR);
 reg &= ~(PM7_PM0_M << PM7_PM0_S);
 reg |= (1 << PM7_PM0_S);
 WRITE4(sc, SSI_STCCR, reg);

 reg = READ4(sc, SSI_SFCSR);
 reg &= ~(SFCSR_TFWM0_M << SFCSR_TFWM0_S);
 reg |= (8 << SFCSR_TFWM0_S);
 WRITE4(sc, SSI_SFCSR, reg);

 reg = READ4(sc, SSI_STCR);
 reg |= (STCR_TFEN0);
 reg &= ~(STCR_TFEN1);
 reg &= ~(STCR_TSHFD);
 reg |= (STCR_TXBIT0);
 reg |= (STCR_TXDIR | STCR_TFDIR);
 reg |= (STCR_TSCKP);
 reg |= (STCR_TFSI);
 reg &= ~(STCR_TFSI);
 reg &= ~(STCR_TFSL);
 reg |= STCR_TEFS;
 WRITE4(sc, SSI_STCR, reg);

 reg = READ4(sc, SSI_SCR);
 reg &= ~(SCR_I2S_MODE_M << SCR_I2S_MODE_S);
 reg |= (SCR_SSIEN | SCR_TE);
 reg |= (SCR_NET);
 reg |= (SCR_SYN);
 WRITE4(sc, SSI_SCR, reg);
}
