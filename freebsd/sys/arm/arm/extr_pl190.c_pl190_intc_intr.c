
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct trapframe {int dummy; } ;
struct pl190_intc_softc {int dummy; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 int INTC_VIC_READ_4 (struct pl190_intc_softc*,int ) ;
 int PCPU_GET (int ) ;
 int VICIRQSTATUS ;
 int VIC_LOCK (struct pl190_intc_softc*) ;
 int VIC_NIRQS ;
 int VIC_UNLOCK (struct pl190_intc_softc*) ;
 int cpuid ;
 TYPE_1__* curthread ;
 int pl190_intc_irq_dispatch (struct pl190_intc_softc*,int,struct trapframe*) ;

__attribute__((used)) static int
pl190_intc_intr(void *arg)
{
 struct pl190_intc_softc *sc;
 u_int cpu;
 uint32_t num, pending;
 struct trapframe *tf;

 sc = arg;
 cpu = PCPU_GET(cpuid);
 tf = curthread->td_intr_frame;

 VIC_LOCK(sc);
 pending = INTC_VIC_READ_4(sc, VICIRQSTATUS);
 VIC_UNLOCK(sc);
 for (num = 0 ; num < VIC_NIRQS; num++) {
  if (pending & (1 << num))
   pl190_intc_irq_dispatch(sc, num, tf);
 }

 return (FILTER_HANDLED);
}
