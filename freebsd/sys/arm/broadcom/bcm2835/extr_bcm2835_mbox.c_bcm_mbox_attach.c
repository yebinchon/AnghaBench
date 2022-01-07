
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mbox_softc {int property_chan_lock; scalar_t__* have_message; scalar_t__* msg; int lock; int * irq_res; int intr_hl; int * mem_res; int bsh; int bst; } ;
typedef int device_t ;


 int BCM2835_MBOX_CHANS ;
 int CONFIG_DATA_IRQ ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int REG_CONFIG ;
 int REG_READ ;
 int REG_STATUS ;
 int RF_ACTIVE ;
 int STATUS_EMPTY ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bcm_mbox_intr ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct bcm_mbox_softc*,int *) ;
 struct bcm_mbox_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mbox_read_4 (struct bcm_mbox_softc*,int ) ;
 int mbox_write_4 (struct bcm_mbox_softc*,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
bcm_mbox_attach(device_t dev)
{
 struct bcm_mbox_softc *sc = device_get_softc(dev);
 int i;
 int rid = 0;

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


 if (bus_setup_intr(dev, sc->irq_res, INTR_MPSAFE | INTR_TYPE_MISC,
     ((void*)0), bcm_mbox_intr, sc, &sc->intr_hl) != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, rid, sc->irq_res);
  device_printf(dev, "Unable to setup the clock irq handler.\n");
  return (ENXIO);
 }

 mtx_init(&sc->lock, "vcio mbox", ((void*)0), MTX_DEF);
 for (i = 0; i < BCM2835_MBOX_CHANS; i++) {
  sc->msg[i] = 0;
  sc->have_message[i] = 0;
 }

 sx_init(&sc->property_chan_lock, "mboxprop");


 while ((mbox_read_4(sc, REG_STATUS) & STATUS_EMPTY) == 0)
  (void)mbox_read_4(sc, REG_READ);

 mbox_write_4(sc, REG_CONFIG, CONFIG_DATA_IRQ);

 return (0);
}
