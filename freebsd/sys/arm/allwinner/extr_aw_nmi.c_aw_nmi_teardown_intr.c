
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {scalar_t__ isrc_handlers; } ;
struct TYPE_3__ {int tri; int pol; } ;
struct aw_nmi_softc {TYPE_2__* cfg; TYPE_1__ intr; } ;
typedef int device_t ;
struct TYPE_4__ {int enable_reg; } ;


 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int NMI_IRQ_ENABLE ;
 int SC_NMI_WRITE (struct aw_nmi_softc*,int ,int) ;
 struct aw_nmi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_nmi_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct aw_nmi_softc *sc;

 sc = device_get_softc(dev);

 if (isrc->isrc_handlers == 0) {
  sc->intr.pol = INTR_POLARITY_CONFORM;
  sc->intr.tri = INTR_TRIGGER_CONFORM;

  SC_NMI_WRITE(sc, sc->cfg->enable_reg, !NMI_IRQ_ENABLE);
 }

 return (0);
}
