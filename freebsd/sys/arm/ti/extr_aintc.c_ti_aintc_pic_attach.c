
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ti_aintc_softc {int sc_dev; TYPE_1__* aintc_isrcs; } ;
struct intr_pic {int dummy; } ;
struct TYPE_2__ {size_t tai_irq; int tai_isrc; } ;


 int ENXIO ;
 size_t INTC_NIRQS ;
 intptr_t OF_xref_from_node (int ) ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int intr_pic_claim_root (int ,intptr_t,int ,struct ti_aintc_softc*,int ) ;
 struct intr_pic* intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;
 int ti_aintc_intr ;

__attribute__((used)) static int
ti_aintc_pic_attach(struct ti_aintc_softc *sc)
{
 struct intr_pic *pic;
 int error;
 uint32_t irq;
 const char *name;
 intptr_t xref;

 name = device_get_nameunit(sc->sc_dev);
 for (irq = 0; irq < INTC_NIRQS; irq++) {
  sc->aintc_isrcs[irq].tai_irq = irq;

  error = intr_isrc_register(&sc->aintc_isrcs[irq].tai_isrc,
      sc->sc_dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(sc->sc_dev));
 pic = intr_pic_register(sc->sc_dev, xref);
 if (pic == ((void*)0))
  return (ENXIO);

 return (intr_pic_claim_root(sc->sc_dev, xref, ti_aintc_intr, sc, 0));
}
