
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mv_ap806_sei_softc {int * mem_res; int * irq_res; int * irq_ih; int dev; TYPE_1__* isrcs; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {int irq; int isrc; } ;


 int ENXIO ;
 int GICP_SEMR0 ;
 int GICP_SEMR1 ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MV_AP806_SEI_LOCK_DESTROY (struct mv_ap806_sei_softc*) ;
 int MV_AP806_SEI_LOCK_INIT (struct mv_ap806_sei_softc*) ;
 int MV_AP806_SEI_MAX_NIRQS ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WR4 (struct mv_ap806_sei_softc*,int ,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int ,int *,struct mv_ap806_sei_softc*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 char* device_get_nameunit (int ) ;
 struct mv_ap806_sei_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,int) ;
 int * intr_pic_register (int ,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mv_ap806_sei_intr ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mv_ap806_sei_attach(device_t dev)
{
 struct mv_ap806_sei_softc *sc;
 phandle_t xref, node;
 uint32_t irq;
 const char *name;
 int rv, rid;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);
 MV_AP806_SEI_LOCK_INIT(sc);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  rv = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  rv = ENXIO;
  goto fail;
 }


 WR4(sc, GICP_SEMR0, 0xFFFFFFFF);
 WR4(sc, GICP_SEMR1, 0xFFFFFFFF);


 sc->isrcs = malloc(sizeof(*sc->isrcs) * MV_AP806_SEI_MAX_NIRQS,
     M_DEVBUF, M_WAITOK | M_ZERO);
 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < MV_AP806_SEI_MAX_NIRQS; irq++) {
  sc->isrcs[irq].irq = irq;
  rv = intr_isrc_register(&sc->isrcs[irq].isrc,
      sc->dev, 0, "%s,%u", name, irq);
  if (rv != 0)
   goto fail;
 }
 xref = OF_xref_from_node(node);;
 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "Cannot register SEI\n");
  rv = ENXIO;
  goto fail;
 }
 if (bus_setup_intr(dev, sc->irq_res,INTR_TYPE_MISC | INTR_MPSAFE,
     mv_ap806_sei_intr, ((void*)0), sc, &sc->irq_ih)) {
  device_printf(dev,
      "Unable to register interrupt handler\n");
  rv = ENXIO;
  goto fail;
 }

 OF_device_register_xref(xref, dev);
 return (0);

fail:
 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 MV_AP806_SEI_LOCK_DESTROY(sc);
 return (ENXIO);
}
