
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; int isrc_flags; int isrc_cpu; } ;
struct bcm_lintc_softc {int dummy; } ;
typedef int device_t ;


 int BCM_LINTC_LOCK (struct bcm_lintc_softc*) ;
 int BCM_LINTC_UNLOCK (struct bcm_lintc_softc*) ;
 int CPU_SET (int ,int *) ;
 int INTR_ISRCF_PPI ;
 int PCPU_GET (int ) ;
 int cpuid ;
 struct bcm_lintc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_lintc_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct bcm_lintc_softc *sc;

 if (isrc->isrc_handlers == 0 && isrc->isrc_flags & INTR_ISRCF_PPI) {
  sc = device_get_softc(dev);
  BCM_LINTC_LOCK(sc);
  CPU_SET(PCPU_GET(cpuid), &isrc->isrc_cpu);
  BCM_LINTC_UNLOCK(sc);
 }
 return (0);
}
