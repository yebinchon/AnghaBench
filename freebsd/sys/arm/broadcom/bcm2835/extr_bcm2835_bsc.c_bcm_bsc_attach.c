
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_bsc_softc {int * sc_iicbus; int sc_mtx; void* sc_mem_res; void* sc_irq_res; int sc_intrhand; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int ich_func_t ;
typedef int device_t ;


 int BCM_BSC_LOCK (struct bcm_bsc_softc*) ;
 int BCM_BSC_UNLOCK (struct bcm_bsc_softc*) ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bcm_bsc_detach (int ) ;
 int bcm_bsc_intr ;
 int bcm_bsc_reset (struct bcm_bsc_softc*) ;
 int bcm_bsc_sysctl_init (struct bcm_bsc_softc*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_generic_attach ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct bcm_bsc_softc*,int *) ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 struct bcm_bsc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;

__attribute__((used)) static int
bcm_bsc_attach(device_t dev)
{
 struct bcm_bsc_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_mem_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }


 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), bcm_bsc_intr, sc, &sc->sc_intrhand)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot setup the interrupt handler\n");
  return (ENXIO);
 }

 mtx_init(&sc->sc_mtx, "bcm_bsc", ((void*)0), MTX_DEF);

 bcm_bsc_sysctl_init(sc);


 BCM_BSC_LOCK(sc);
 bcm_bsc_reset(sc);
 BCM_BSC_UNLOCK(sc);

 sc->sc_iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->sc_iicbus == ((void*)0)) {
  bcm_bsc_detach(dev);
  return (ENXIO);
 }


 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);

 return (0);
}
