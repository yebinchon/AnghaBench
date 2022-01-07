
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {scalar_t__ et_frequency; scalar_t__ et_priv; } ;
struct epit_softc {int ctlreg; int oneshot; } ;
typedef int sbintime_t ;


 int EINVAL ;
 int EPIT_CR ;
 int EPIT_CR_EN ;
 int EPIT_LR ;
 int EPIT_SR ;
 int EPIT_SR_OCIF ;
 int WR4 (struct epit_softc*,int ,int) ;
 int WR4B (struct epit_softc*,int ,int) ;

__attribute__((used)) static int
epit_et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct epit_softc *sc;
 uint32_t ticks;

 sc = (struct epit_softc *)et->et_priv;






 WR4(sc, EPIT_CR, sc->ctlreg);
 WR4(sc, EPIT_SR, EPIT_SR_OCIF);
 if (period != 0) {
  sc->oneshot = 0;
  ticks = ((uint32_t)et->et_frequency * period) >> 32;
 } else if (first != 0) {
  sc->oneshot = 1;
  ticks = ((uint32_t)et->et_frequency * first) >> 32;
 } else {
  return (EINVAL);
 }


 WR4(sc, EPIT_LR, ticks);
 WR4B(sc, EPIT_CR, sc->ctlreg | EPIT_CR_EN);

 return (0);
}
