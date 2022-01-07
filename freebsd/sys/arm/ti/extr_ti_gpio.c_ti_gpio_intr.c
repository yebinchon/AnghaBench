
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct ti_gpio_softc {size_t sc_maxpin; int sc_dev; struct ti_gpio_irqsrc* sc_isrcs; } ;
struct ti_gpio_irqsrc {int tgi_mask; int tgi_isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,size_t) ;
 scalar_t__ intr_isrc_dispatch (int *,struct trapframe*) ;
 int ti_gpio_intr_status (struct ti_gpio_softc*) ;
 int ti_gpio_isrc_eoi (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ;
 scalar_t__ ti_gpio_isrc_is_level (struct ti_gpio_irqsrc*) ;
 int ti_gpio_isrc_mask (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ;

__attribute__((used)) static int
ti_gpio_intr(void *arg)
{
 u_int irq;
 uint32_t reg;
 struct ti_gpio_softc *sc;
 struct trapframe *tf;
 struct ti_gpio_irqsrc *tgi;

 sc = (struct ti_gpio_softc *)arg;
 tf = curthread->td_intr_frame;

 reg = ti_gpio_intr_status(sc);
 for (irq = 0; irq < sc->sc_maxpin; irq++) {
  tgi = &sc->sc_isrcs[irq];
  if ((reg & tgi->tgi_mask) == 0)
   continue;
  if (!ti_gpio_isrc_is_level(tgi))
   ti_gpio_isrc_eoi(sc, tgi);
  if (intr_isrc_dispatch(&tgi->tgi_isrc, tf) != 0) {
   ti_gpio_isrc_mask(sc, tgi);
   if (ti_gpio_isrc_is_level(tgi))
    ti_gpio_isrc_eoi(sc, tgi);
   device_printf(sc->sc_dev, "Stray irq %u disabled\n",
       irq);
  }
 }
 return (FILTER_HANDLED);
}
