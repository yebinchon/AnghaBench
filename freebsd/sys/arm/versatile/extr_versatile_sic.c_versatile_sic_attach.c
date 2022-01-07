
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct versatile_sic_softc {int dev; struct versatile_sic_irqsrc* isrcs; int intrh; int * irq_res; int * mem_res; int mtx; } ;
struct versatile_sic_irqsrc {size_t irq; int isrc; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_MISC ;
 int MTX_SPIN ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SIC_ENCLR ;
 size_t SIC_NIRQS ;
 int SIC_WRITE_4 (struct versatile_sic_softc*,int ,int) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct versatile_sic_softc*,int *) ;
 char* device_get_nameunit (int ) ;
 struct versatile_sic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int intr_pic_register (int ,int ) ;
 int mtx_init (int *,char*,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int versatile_sic_detach (int ) ;
 int versatile_sic_filter ;

__attribute__((used)) static int
versatile_sic_attach(device_t dev)
{
 struct versatile_sic_softc *sc = device_get_softc(dev);
 int rid, error;
 uint32_t irq;
 const char *name;
 struct versatile_sic_irqsrc *isrcs;

 sc->dev = dev;
 mtx_init(&sc->mtx, device_get_nameunit(dev), "sic",
     MTX_SPIN);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Error: could not allocate memory resources\n");
  return (ENXIO);
 }


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "could not allocate IRQ resources\n");
  versatile_sic_detach(dev);
  return (ENXIO);
 }

 if ((bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC,
     versatile_sic_filter, ((void*)0), sc, &sc->intrh))) {
  device_printf(dev,
      "unable to register interrupt handler\n");
  versatile_sic_detach(dev);
  return (ENXIO);
 }


 SIC_WRITE_4(sc, SIC_ENCLR, 0xffffffff);


 isrcs = sc->isrcs;
 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < SIC_NIRQS; irq++) {
  isrcs[irq].irq = irq;
  error = intr_isrc_register(&isrcs[irq].isrc, sc->dev,
      0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }

 intr_pic_register(dev, OF_xref_from_node(ofw_bus_get_node(dev)));

 return (0);
}
