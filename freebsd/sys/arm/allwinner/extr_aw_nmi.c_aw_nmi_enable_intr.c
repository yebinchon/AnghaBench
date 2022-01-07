
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_irqsrc {int dummy; } ;
struct aw_nmi_softc {TYPE_1__* cfg; } ;
typedef int device_t ;
struct TYPE_2__ {int enable_reg; } ;


 int NMI_IRQ_ENABLE ;
 int SC_NMI_WRITE (struct aw_nmi_softc*,int ,int ) ;
 struct aw_nmi_softc* device_get_softc (int ) ;

__attribute__((used)) static void
aw_nmi_enable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct aw_nmi_softc *sc;

 sc = device_get_softc(dev);

 SC_NMI_WRITE(sc, sc->cfg->enable_reg, NMI_IRQ_ENABLE);
}
