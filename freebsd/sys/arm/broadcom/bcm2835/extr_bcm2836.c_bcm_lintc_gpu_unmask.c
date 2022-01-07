
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_lintc_softc {int dummy; } ;
struct bcm_lintc_irqsrc {int bli_value; } ;


 int BCM_LINTC_GPU_ROUTING_REG ;
 int bcm_lintc_write_4 (struct bcm_lintc_softc*,int ,int ) ;

__attribute__((used)) static inline void
bcm_lintc_gpu_unmask(struct bcm_lintc_softc *sc, struct bcm_lintc_irqsrc *bli)
{


 bcm_lintc_write_4(sc, BCM_LINTC_GPU_ROUTING_REG, bli->bli_value);
}
