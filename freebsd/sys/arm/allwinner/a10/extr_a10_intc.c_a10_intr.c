
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct a10_aintc_softc {int sc_dev; TYPE_1__* isrcs; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {int isrc; } ;


 int A10_INTR_MAX_NIRQS ;
 int FILTER_HANDLED ;
 int a10_intr_eoi (struct a10_aintc_softc*,int) ;
 int a10_intr_mask (struct a10_aintc_softc*,int) ;
 int a10_pending_irq (struct a10_aintc_softc*) ;
 int arm_irq_memory_barrier (int) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,int) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
a10_intr(void *arg)
{
 struct a10_aintc_softc *sc = arg;
 u_int irq;

 irq = a10_pending_irq(sc);
 if (irq == -1 || irq > A10_INTR_MAX_NIRQS) {
  device_printf(sc->sc_dev, "Spurious interrupt %d\n", irq);
  return (FILTER_HANDLED);
 }

 while (irq != -1) {
  if (irq > A10_INTR_MAX_NIRQS) {
   device_printf(sc->sc_dev, "Spurious interrupt %d\n",
       irq);
   return (FILTER_HANDLED);
  }
  if (intr_isrc_dispatch(&sc->isrcs[irq].isrc,
      curthread->td_intr_frame) != 0) {
   a10_intr_mask(sc, irq);
   a10_intr_eoi(sc, irq);
   device_printf(sc->sc_dev,
       "Stray interrupt %d disabled\n", irq);
  }

  arm_irq_memory_barrier(irq);
  irq = a10_pending_irq(sc);
 }

 return (FILTER_HANDLED);
}
