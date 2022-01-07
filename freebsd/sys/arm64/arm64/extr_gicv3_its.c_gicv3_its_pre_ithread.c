
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gicv3_its_softc {scalar_t__ sc_irq_base; } ;
struct gicv3_its_irqsrc {scalar_t__ gi_irq; } ;
typedef int device_t ;


 int EOIR1 ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int gic_icc_write (int ,scalar_t__) ;
 int gicv3_its_disable_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static void
gicv3_its_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct gicv3_its_irqsrc *girq;
 struct gicv3_its_softc *sc;

 sc = device_get_softc(dev);
 girq = (struct gicv3_its_irqsrc *)isrc;
 gicv3_its_disable_intr(dev, isrc);
 gic_icc_write(EOIR1, girq->gi_irq + sc->sc_irq_base);
}
