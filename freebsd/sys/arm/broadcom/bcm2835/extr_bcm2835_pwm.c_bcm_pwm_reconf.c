
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bcm_pwm_softc {int mode; int mode2; scalar_t__ period; scalar_t__ ratio; scalar_t__ period2; scalar_t__ ratio2; scalar_t__ freq; int clkman; } ;


 int BCM_PWM_CLKSRC ;
 int EINVAL ;
 int W_CTL (struct bcm_pwm_softc*,scalar_t__) ;
 int W_DAT (struct bcm_pwm_softc*,scalar_t__) ;
 int W_DAT2 (struct bcm_pwm_softc*,scalar_t__) ;
 int W_RNG (struct bcm_pwm_softc*,scalar_t__) ;
 int W_RNG2 (struct bcm_pwm_softc*,scalar_t__) ;
 scalar_t__ bcm2835_clkman_set_frequency (int ,int ,scalar_t__) ;

__attribute__((used)) static int
bcm_pwm_reconf(struct bcm_pwm_softc *sc)
{
 uint32_t u, ctlr;


 W_CTL(sc, 0);


 (void)bcm2835_clkman_set_frequency(sc->clkman, BCM_PWM_CLKSRC, 0);

 ctlr = 0;

 if (sc->mode == 0 && sc->mode2 == 0)
  return 0;



 u = bcm2835_clkman_set_frequency(sc->clkman, BCM_PWM_CLKSRC, sc->freq);
 if (u == 0)
  return (EINVAL);
 sc->freq = u;
 if (sc->mode != 0) {

  W_RNG(sc, sc->period);
  if (sc->ratio > sc->period)
   sc->ratio = sc->period;
  W_DAT(sc, sc->ratio);


  if (sc->mode == 1)
   ctlr |= 0x81;
  else
   ctlr |= 0x1;
 }

 if (sc->mode2 != 0) {

  W_RNG2(sc, sc->period2);
  if (sc->ratio2 > sc->period2)
   sc->ratio2 = sc->period2;
  W_DAT2(sc, sc->ratio2);


  if (sc->mode2 == 1)
   ctlr |= 0x8100;
  else
   ctlr |= 0x100;
 }


 W_CTL(sc, ctlr);

 return (0);
}
