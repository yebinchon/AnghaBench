
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct am335x_ehrpwm_softc {int sc_clkfreq; int sc_clktick; int sc_period; int sc_dev; } ;


 int EPWM_READ2 (struct am335x_ehrpwm_softc*,int ) ;
 int EPWM_TBCTL ;
 int EPWM_TBPRD ;
 int EPWM_WRITE2 (struct am335x_ehrpwm_softc*,int ,int) ;
 int NS_PER_SEC ;
 int PWM_CLOCK ;
 int PWM_LOCK_ASSERT (struct am335x_ehrpwm_softc*) ;
 int TBCTL_CLKDIV (int) ;
 int TBCTL_CLKDIV_MASK ;
 int TBCTL_HSPCLKDIV (int) ;
 int TBCTL_HSPCLKDIV_MASK ;
 int am335x_ehrpwm_cfg_duty (struct am335x_ehrpwm_softc*,int,int ) ;
 int device_printf (int ,char*,int,int,int,int,int,int,int) ;
 int max (int,int) ;

__attribute__((used)) static bool
am335x_ehrpwm_cfg_period(struct am335x_ehrpwm_softc *sc, u_int period)
{
 uint16_t regval;
 u_int clkdiv, hspclkdiv, pwmclk, pwmtick, tbprd;


 if (period < 2 * NS_PER_SEC / PWM_CLOCK) {
  sc->sc_clkfreq = 0;
  sc->sc_clktick = 0;
  sc->sc_period = 0;
  return (0);
 }





 tbprd = 0;
 for (clkdiv = 0; clkdiv < 8; ++clkdiv) {
  const u_int cd = 1 << clkdiv;
  for (hspclkdiv = 0; hspclkdiv < 8; ++hspclkdiv) {
   const u_int cdhs = max(1, hspclkdiv * 2);
   pwmclk = PWM_CLOCK / (cd * cdhs);
   pwmtick = NS_PER_SEC / pwmclk;
   if (period / pwmtick < 65536) {
    tbprd = period / pwmtick;
    break;
   }
  }
  if (tbprd != 0)
   break;
 }


 if (tbprd == 0)
  return (0);





 if (sc->sc_clkfreq != pwmclk || sc->sc_clktick != pwmtick ||
     sc->sc_period != tbprd * pwmtick) {

  sc->sc_clkfreq = pwmclk;
  sc->sc_clktick = pwmtick;
  sc->sc_period = tbprd * pwmtick;

  PWM_LOCK_ASSERT(sc);
  regval = EPWM_READ2(sc, EPWM_TBCTL);
  regval &= ~(TBCTL_CLKDIV_MASK | TBCTL_HSPCLKDIV_MASK);
  regval |= TBCTL_CLKDIV(clkdiv) | TBCTL_HSPCLKDIV(hspclkdiv);
  EPWM_WRITE2(sc, EPWM_TBCTL, regval);
  EPWM_WRITE2(sc, EPWM_TBPRD, tbprd - 1);
  am335x_ehrpwm_cfg_duty(sc, 0, 0);
  am335x_ehrpwm_cfg_duty(sc, 1, 0);
 }

 return (1);
}
