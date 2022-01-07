
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;
struct intr_irqsrc {int dummy; } ;
struct gicv3_its_softc {int sc_its_flags; scalar_t__ sc_conf_base; } ;
struct gicv3_its_irqsrc {size_t gi_irq; int gi_its_dev; } ;
typedef int device_t ;


 int ITS_FLAGS_LPI_CONF_FLUSH ;
 int LPI_CONF_ENABLE ;
 int cpu_dcache_wb_range (int ,int) ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int dsb (int ) ;
 int ishst ;
 int its_cmd_inv (int ,int ,struct gicv3_its_irqsrc*) ;

__attribute__((used)) static void
gicv3_its_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct gicv3_its_softc *sc;
 struct gicv3_its_irqsrc *girq;
 uint8_t *conf;

 sc = device_get_softc(dev);
 girq = (struct gicv3_its_irqsrc *)isrc;
 conf = (uint8_t *)sc->sc_conf_base;

 conf[girq->gi_irq] |= LPI_CONF_ENABLE;

 if ((sc->sc_its_flags & ITS_FLAGS_LPI_CONF_FLUSH) != 0) {

  cpu_dcache_wb_range((vm_offset_t)&conf[girq->gi_irq], 1);
 } else {

  dsb(ishst);
 }

 its_cmd_inv(dev, girq->gi_its_dev, girq);
}
