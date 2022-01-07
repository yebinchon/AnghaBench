
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct trapframe {int dummy; } ;
struct bcm_lintc_softc {int bls_dev; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int BCM_LINTC_GPU_IRQ ;
 int BCM_LINTC_GPU_IRQ_MASK ;
 int BCM_LINTC_MBOX0_IRQ_MASK ;
 int BCM_LINTC_PENDING_MASK ;
 int BCM_LINTC_PENDING_REG (int ) ;
 int BCM_LINTC_PMU_IRQ ;
 int BCM_LINTC_PMU_IRQ_MASK ;
 int BCM_LINTC_TIMER0_IRQ ;
 int BCM_LINTC_TIMER0_IRQ_MASK ;
 int BCM_LINTC_TIMER1_IRQ ;
 int BCM_LINTC_TIMER1_IRQ_MASK ;
 int BCM_LINTC_TIMER2_IRQ ;
 int BCM_LINTC_TIMER2_IRQ_MASK ;
 int BCM_LINTC_TIMER3_IRQ ;
 int BCM_LINTC_TIMER3_IRQ_MASK ;
 int FILTER_HANDLED ;
 int PCPU_GET (int ) ;
 int arm_irq_memory_barrier (int ) ;
 int bcm_lintc_ipi_dispatch (struct bcm_lintc_softc*,int ,struct trapframe*) ;
 int bcm_lintc_irq_dispatch (struct bcm_lintc_softc*,int ,struct trapframe*) ;
 int bcm_lintc_read_4 (struct bcm_lintc_softc*,int ) ;
 scalar_t__ bootverbose ;
 int cpuid ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bcm_lintc_intr(void *arg)
{
 struct bcm_lintc_softc *sc;
 u_int cpu;
 uint32_t num, reg;
 struct trapframe *tf;

 sc = arg;
 cpu = PCPU_GET(cpuid);
 tf = curthread->td_intr_frame;

 for (num = 0; ; num++) {
  reg = bcm_lintc_read_4(sc, BCM_LINTC_PENDING_REG(cpu));
  if ((reg & BCM_LINTC_PENDING_MASK) == 0)
   break;




  if (reg & BCM_LINTC_TIMER0_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_TIMER0_IRQ, tf);
  if (reg & BCM_LINTC_TIMER1_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_TIMER1_IRQ, tf);
  if (reg & BCM_LINTC_TIMER2_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_TIMER2_IRQ, tf);
  if (reg & BCM_LINTC_TIMER3_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_TIMER3_IRQ, tf);
  if (reg & BCM_LINTC_GPU_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_GPU_IRQ, tf);
  if (reg & BCM_LINTC_PMU_IRQ_MASK)
   bcm_lintc_irq_dispatch(sc, BCM_LINTC_PMU_IRQ, tf);

  arm_irq_memory_barrier(0);
 }
 reg &= ~BCM_LINTC_PENDING_MASK;
 if (reg != 0)
  device_printf(sc->bls_dev, "Unknown interrupt(s) %x\n", reg);
 else if (num == 0 && bootverbose)
  device_printf(sc->bls_dev, "Spurious interrupt detected\n");

 return (FILTER_HANDLED);
}
