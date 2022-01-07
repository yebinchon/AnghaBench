
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int gi_irq; struct intr_irqsrc gi_isrc; int gi_trig; int gi_pol; } ;
struct arm_gic_softc {int nirqs; struct gic_irqsrc* gic_irqs; int gic_dev; } ;


 scalar_t__ GIC_FIRST_PPI ;
 scalar_t__ GIC_FIRST_SGI ;
 scalar_t__ GIC_FIRST_SPI ;
 int GIC_LAST_PPI ;
 int GIC_LAST_SGI ;
 int INTR_ISRCF_IPI ;
 int INTR_ISRCF_PPI ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 char* device_get_nameunit (int ) ;
 int free (struct gic_irqsrc*,int ) ;
 int intr_isrc_register (struct intr_irqsrc*,int ,int ,char*,char const*,scalar_t__) ;
 struct gic_irqsrc* malloc (int,int ,int) ;

__attribute__((used)) static int
arm_gic_register_isrcs(struct arm_gic_softc *sc, uint32_t num)
{
 int error;
 uint32_t irq;
 struct gic_irqsrc *irqs;
 struct intr_irqsrc *isrc;
 const char *name;

 irqs = malloc(num * sizeof(struct gic_irqsrc), M_DEVBUF,
     M_WAITOK | M_ZERO);

 name = device_get_nameunit(sc->gic_dev);
 for (irq = 0; irq < num; irq++) {
  irqs[irq].gi_irq = irq;
  irqs[irq].gi_pol = INTR_POLARITY_CONFORM;
  irqs[irq].gi_trig = INTR_TRIGGER_CONFORM;

  isrc = &irqs[irq].gi_isrc;
  if (irq <= GIC_LAST_SGI) {
   error = intr_isrc_register(isrc, sc->gic_dev,
       INTR_ISRCF_IPI, "%s,i%u", name, irq - GIC_FIRST_SGI);
  } else if (irq <= GIC_LAST_PPI) {
   error = intr_isrc_register(isrc, sc->gic_dev,
       INTR_ISRCF_PPI, "%s,p%u", name, irq - GIC_FIRST_PPI);
  } else {
   error = intr_isrc_register(isrc, sc->gic_dev, 0,
       "%s,s%u", name, irq - GIC_FIRST_SPI);
  }
  if (error != 0) {

   free(irqs, M_DEVBUF);
   return (error);
  }
 }
 sc->gic_irqs = irqs;
 sc->nirqs = num;
 return (0);
}
