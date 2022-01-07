
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {struct am335x_dmtimer_softc* et_priv; } ;
struct am335x_dmtimer_softc {int tclr; } ;


 int DMTIMER_WRITE4 (struct am335x_dmtimer_softc*,int ,int) ;
 int DMT_IRQENABLE_CLR ;
 int DMT_IRQSTATUS ;
 int DMT_IRQ_OVF ;
 int DMT_TCLR ;
 int DMT_TCLR_AUTOLOAD ;
 int DMT_TCLR_START ;

__attribute__((used)) static int
am335x_dmtimer_et_stop(struct eventtimer *et)
{
 struct am335x_dmtimer_softc *sc;

 sc = et->et_priv;


 sc->tclr &= ~(DMT_TCLR_START | DMT_TCLR_AUTOLOAD);
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);
 DMTIMER_WRITE4(sc, DMT_IRQENABLE_CLR, DMT_IRQ_OVF);
 DMTIMER_WRITE4(sc, DMT_IRQSTATUS, DMT_IRQ_OVF);
 return (0);
}
