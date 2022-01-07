
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcm_intc_softc {int sc_dev; TYPE_2__* intc_isrcs; } ;
struct TYPE_4__ {int bii_isrc; } ;
struct TYPE_3__ {int td_intr_frame; } ;


 int FILTER_HANDLED ;
 int arm_irq_memory_barrier (int ) ;
 int bcm2835_intc_active_intr (struct bcm_intc_softc*) ;
 int bcm_intc_isrc_mask (struct bcm_intc_softc*,TYPE_2__*) ;
 scalar_t__ bootverbose ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,...) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
bcm2835_intc_intr(void *arg)
{
 int irq, num;
 struct bcm_intc_softc *sc = arg;

 for (num = 0; ; num++) {
  irq = bcm2835_intc_active_intr(sc);
  if (irq == -1)
   break;
  if (intr_isrc_dispatch(&sc->intc_isrcs[irq].bii_isrc,
      curthread->td_intr_frame) != 0) {
   bcm_intc_isrc_mask(sc, &sc->intc_isrcs[irq]);
   device_printf(sc->sc_dev, "Stray irq %u disabled\n",
       irq);
  }
  arm_irq_memory_barrier(0);
 }
 if (num == 0 && bootverbose)
  device_printf(sc->sc_dev, "Spurious interrupt detected\n");

 return (FILTER_HANDLED);
}
