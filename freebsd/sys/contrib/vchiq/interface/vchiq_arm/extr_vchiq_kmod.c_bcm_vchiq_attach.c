
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_vchiq_softc {int regs_offset; int lock; int * irq_res; int intr_hl; int * mem_res; int bsh; int bst; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
typedef int cell ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int EINVAL ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ UPSTREAM_DTB ;
 int bcm_vchiq_intr ;
 struct bcm_vchiq_softc* bcm_vchiq_sc ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct bcm_vchiq_softc*,int *) ;
 int compat_data ;
 struct bcm_vchiq_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int g_cache_line_size ;
 int mtx_init (int *,char*,int ,int ) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int vchiq_core_initialize () ;
 int vchiq_init () ;

__attribute__((used)) static int
bcm_vchiq_attach(device_t dev)
{
 struct bcm_vchiq_softc *sc = device_get_softc(dev);
 phandle_t node;
 pcell_t cell;
 int rid = 0;

 if (bcm_vchiq_sc != ((void*)0))
  return (EINVAL);

 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->mem_res);
 sc->bsh = rman_get_bushandle(sc->mem_res);

 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource\n");
  return (ENXIO);
 }

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == UPSTREAM_DTB)
  sc->regs_offset = -0x40;

 node = ofw_bus_get_node(dev);
 if ((OF_getencprop(node, "cache-line-size", &cell, sizeof(cell))) > 0)
  g_cache_line_size = cell;

 vchiq_core_initialize();


 if (bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
   ((void*)0), bcm_vchiq_intr, sc,
   &sc->intr_hl) != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, rid,
   sc->irq_res);
  device_printf(dev, "Unable to setup the clock irq handler.\n");
  return (ENXIO);
 }

 mtx_init(&sc->lock, "vchiq", 0, MTX_DEF);
 bcm_vchiq_sc = sc;

 vchiq_init();

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return (0);
}
