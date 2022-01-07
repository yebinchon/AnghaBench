
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct tzic_softc {int dev; TYPE_1__* isrcs; } ;
struct intr_pic {int dummy; } ;
struct TYPE_2__ {size_t irq; int isrc; } ;


 int ENXIO ;
 intptr_t OF_xref_from_node (int ) ;
 size_t TZIC_NIRQS ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int intr_pic_claim_root (int ,intptr_t,int ,struct tzic_softc*,int ) ;
 struct intr_pic* intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;
 int tzic_intr ;

__attribute__((used)) static int
tzic_pic_attach(struct tzic_softc *sc)
{
 struct intr_pic *pic;
 const char *name;
 intptr_t xref;
 int error;
 u_int irq;

 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < TZIC_NIRQS; irq++) {
  sc->isrcs[irq].irq = irq;
  error = intr_isrc_register(&sc->isrcs[irq].isrc,
      sc->dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(sc->dev));
 pic = intr_pic_register(sc->dev, xref);
 if (pic == ((void*)0))
  return (ENXIO);

 return (intr_pic_claim_root(sc->dev, xref, tzic_intr, sc, 0));
}
