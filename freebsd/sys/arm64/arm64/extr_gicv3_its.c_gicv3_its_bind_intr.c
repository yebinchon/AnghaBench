
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int isrc_cpu; } ;
struct gicv3_its_softc {int gic_irq_cpu; int sc_cpus; } ;
struct gicv3_its_irqsrc {int dummy; } ;
typedef int device_t ;


 scalar_t__ CPU_EMPTY (int *) ;
 int CPU_SETOF (int ,int *) ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int intr_irq_next_cpu (int ,int *) ;
 int its_cmd_movi (int ,struct gicv3_its_irqsrc*) ;

__attribute__((used)) static int
gicv3_its_bind_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct gicv3_its_irqsrc *girq;
 struct gicv3_its_softc *sc;

 sc = device_get_softc(dev);
 girq = (struct gicv3_its_irqsrc *)isrc;
 if (CPU_EMPTY(&isrc->isrc_cpu)) {
  sc->gic_irq_cpu = intr_irq_next_cpu(sc->gic_irq_cpu,
      &sc->sc_cpus);
  CPU_SETOF(sc->gic_irq_cpu, &isrc->isrc_cpu);
 }

 its_cmd_movi(dev, girq);

 return (0);
}
