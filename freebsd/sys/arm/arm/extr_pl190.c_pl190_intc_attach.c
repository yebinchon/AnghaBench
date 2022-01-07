
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl190_intc_softc {int dev; struct pl190_intc_irqsrc* isrcs; int * intc_res; int mtx; } ;
struct pl190_intc_irqsrc {int irq; int isrc; } ;
struct intr_pic {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTC_VIC_READ_4 (struct pl190_intc_softc*,scalar_t__) ;
 int INTC_VIC_WRITE_4 (struct pl190_intc_softc*,int ,int) ;
 int MTX_SPIN ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int VICINTENCLEAR ;
 int VICINTSELECT ;
 scalar_t__ VICPERIPHID ;
 scalar_t__ VICPRIMECELLID ;
 int VIC_NIRQS ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 char* device_get_nameunit (int ) ;
 struct pl190_intc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,int) ;
 int intr_pic_claim_root (int ,int ,int ,struct pl190_intc_softc*,int ) ;
 struct intr_pic* intr_pic_register (int ,int ) ;
 int mtx_init (int *,char*,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int pl190_intc_intr ;

__attribute__((used)) static int
pl190_intc_attach(device_t dev)
{
 struct pl190_intc_softc *sc;
 uint32_t id;
 int i, rid;
 struct pl190_intc_irqsrc *isrcs;
 struct intr_pic *pic;
 int error;
 uint32_t irq;
 const char *name;
 phandle_t xref;

 sc = device_get_softc(dev);
 sc->dev = dev;
 mtx_init(&sc->mtx, device_get_nameunit(dev), "pl190",
     MTX_SPIN);


 rid = 0;
 sc->intc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->intc_res == ((void*)0)) {
  device_printf(dev, "Error: could not allocate memory resources\n");
  return (ENXIO);
 }




 INTC_VIC_WRITE_4(sc, VICINTSELECT, 0x00000000);

 INTC_VIC_WRITE_4(sc, VICINTENCLEAR, 0xffffffff);

 id = 0;
 for (i = 3; i >= 0; i--) {
  id = (id << 8) |
       (INTC_VIC_READ_4(sc, VICPERIPHID + i*4) & 0xff);
 }

 device_printf(dev, "Peripheral ID: %08x\n", id);

 id = 0;
 for (i = 3; i >= 0; i--) {
  id = (id << 8) |
       (INTC_VIC_READ_4(sc, VICPRIMECELLID + i*4) & 0xff);
 }

 device_printf(dev, "PrimeCell ID: %08x\n", id);


 isrcs = sc->isrcs;
 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < VIC_NIRQS; irq++) {
  isrcs[irq].irq = irq;
  error = intr_isrc_register(&isrcs[irq].isrc, sc->dev,
      0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(sc->dev));
 pic = intr_pic_register(sc->dev, xref);
 if (pic == ((void*)0))
  return (ENXIO);

 return (intr_pic_claim_root(sc->dev, xref, pl190_intc_intr, sc, 0));
}
