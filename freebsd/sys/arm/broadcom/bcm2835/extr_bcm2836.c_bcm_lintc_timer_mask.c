
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_lintc_softc {int dummy; } ;
struct TYPE_2__ {int isrc_cpu; } ;
struct bcm_lintc_irqsrc {int bli_mask; TYPE_1__ bli_isrc; } ;
typedef int cpuset_t ;


 int BCM_LINTC_LOCK (struct bcm_lintc_softc*) ;
 int BCM_LINTC_TIMER_CFG_REG (int) ;
 int BCM_LINTC_UNLOCK (struct bcm_lintc_softc*) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int bcm_lintc_rwreg_clr (struct bcm_lintc_softc*,int ,int ) ;

__attribute__((used)) static void
bcm_lintc_timer_mask(struct bcm_lintc_softc *sc, struct bcm_lintc_irqsrc *bli)
{
 cpuset_t *cpus;
 uint32_t cpu;

 cpus = &bli->bli_isrc.isrc_cpu;

 BCM_LINTC_LOCK(sc);
 for (cpu = 0; cpu < 4; cpu++)
  if (CPU_ISSET(cpu, cpus))
   bcm_lintc_rwreg_clr(sc, BCM_LINTC_TIMER_CFG_REG(cpu),
       bli->bli_mask);
 BCM_LINTC_UNLOCK(sc);
}
