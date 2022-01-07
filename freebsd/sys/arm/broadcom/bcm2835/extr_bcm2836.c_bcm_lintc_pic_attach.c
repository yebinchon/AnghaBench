
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int u_int ;
struct intr_pic {int dummy; } ;
struct bcm_lintc_softc {int bls_dev; struct bcm_lintc_irqsrc* bls_isrcs; } ;
struct bcm_lintc_irqsrc {size_t bli_irq; int bli_isrc; int bli_value; void* bli_mask; } ;


 int BCM_LINTC_GIRR_IRQ_CORE (int ) ;





 size_t BCM_LINTC_NIRQS ;

 void* BCM_LINTC_TCR_IRQ_EN_TIMER (int) ;




 int ENXIO ;
 int INTR_ISRCF_IPI ;
 int INTR_ISRCF_PPI ;
 intptr_t OF_xref_from_node (int ) ;
 int bcm_lintc_intr ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int intr_pic_claim_root (int ,intptr_t,int ,struct bcm_lintc_softc*,int ) ;
 struct intr_pic* intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
bcm_lintc_pic_attach(struct bcm_lintc_softc *sc)
{
 struct bcm_lintc_irqsrc *bisrcs;
 struct intr_pic *pic;
 int error;
 u_int flags;
 uint32_t irq;
 const char *name;
 intptr_t xref;

 bisrcs = sc->bls_isrcs;
 name = device_get_nameunit(sc->bls_dev);
 for (irq = 0; irq < BCM_LINTC_NIRQS; irq++) {
  bisrcs[irq].bli_irq = irq;
  switch (irq) {
  case 131:
   bisrcs[irq].bli_mask = BCM_LINTC_TCR_IRQ_EN_TIMER(0);
   flags = INTR_ISRCF_PPI;
   break;
  case 130:
   bisrcs[irq].bli_mask = BCM_LINTC_TCR_IRQ_EN_TIMER(1);
   flags = INTR_ISRCF_PPI;
   break;
  case 129:
   bisrcs[irq].bli_mask = BCM_LINTC_TCR_IRQ_EN_TIMER(2);
   flags = INTR_ISRCF_PPI;
   break;
  case 128:
   bisrcs[irq].bli_mask = BCM_LINTC_TCR_IRQ_EN_TIMER(3);
   flags = INTR_ISRCF_PPI;
   break;
  case 136:
  case 135:
  case 134:
  case 133:
   bisrcs[irq].bli_value = 0;
   flags = INTR_ISRCF_IPI;
   break;
  case 137:
   bisrcs[irq].bli_value = BCM_LINTC_GIRR_IRQ_CORE(0);
   flags = 0;
   break;
  case 132:
   bisrcs[irq].bli_value = 0;
   flags = INTR_ISRCF_PPI;
   break;
  default:
   bisrcs[irq].bli_value = 0;
   flags = 0;
   break;
  }

  error = intr_isrc_register(&bisrcs[irq].bli_isrc, sc->bls_dev,
      flags, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(sc->bls_dev));
 pic = intr_pic_register(sc->bls_dev, xref);
 if (pic == ((void*)0))
  return (ENXIO);

 return (intr_pic_claim_root(sc->bls_dev, xref, bcm_lintc_intr, sc, 0));
}
