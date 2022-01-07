
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {scalar_t__ et_frequency; struct am335x_dmtimer_softc* et_priv; } ;
struct am335x_dmtimer_softc {int tclr; } ;
typedef int sbintime_t ;


 int DMTIMER_WRITE4 (struct am335x_dmtimer_softc*,int ,int) ;
 int DMT_IRQENABLE_SET ;
 int DMT_IRQSTATUS ;
 int DMT_IRQ_OVF ;
 int DMT_TCLR ;
 int DMT_TCLR_AUTOLOAD ;
 int DMT_TCLR_START ;
 int DMT_TCRR ;
 int DMT_TLDR ;

__attribute__((used)) static int
am335x_dmtimer_et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct am335x_dmtimer_softc *sc;
 uint32_t initial_count, reload_count;

 sc = et->et_priv;
 sc->tclr &= ~(DMT_TCLR_START | DMT_TCLR_AUTOLOAD);
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);
 DMTIMER_WRITE4(sc, DMT_IRQSTATUS, DMT_IRQ_OVF);

 if (period != 0) {
  reload_count = ((uint32_t)et->et_frequency * period) >> 32;
  sc->tclr |= DMT_TCLR_AUTOLOAD;
 } else {
  reload_count = 0;
 }

 if (first != 0)
  initial_count = ((uint32_t)et->et_frequency * first) >> 32;
 else
  initial_count = reload_count;





 DMTIMER_WRITE4(sc, DMT_TLDR, 0xFFFFFFFF - reload_count);
 DMTIMER_WRITE4(sc, DMT_TCRR, 0xFFFFFFFF - initial_count);


 DMTIMER_WRITE4(sc, DMT_IRQENABLE_SET, DMT_IRQ_OVF);
 sc->tclr |= DMT_TCLR_START;
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);

 return (0);
}
