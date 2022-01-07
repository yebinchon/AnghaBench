
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_ehrpwm_softc {size_t sc_pwm_clkdiv; int sc_pwm_freq; int sc_pwm_period; } ;


 int PWM_CLOCK ;
 int* am335x_ehrpwm_clkdiv ;

__attribute__((used)) static void
am335x_ehrpwm_freq(struct am335x_ehrpwm_softc *sc)
{
 int clkdiv;

 clkdiv = am335x_ehrpwm_clkdiv[sc->sc_pwm_clkdiv];
 sc->sc_pwm_freq = PWM_CLOCK / (1 * clkdiv) / sc->sc_pwm_period;
}
