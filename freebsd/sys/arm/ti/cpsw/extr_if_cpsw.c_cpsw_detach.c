
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {int callout; } ;
struct cpsw_softc {TYPE_4__ tx; TYPE_3__ rx; int irq_res; int * mem_res; int mem_rid; scalar_t__ mbuf_dtag; scalar_t__ nullpad; int * _slots; TYPE_2__ watchdog; TYPE_1__* port; } ;
typedef int device_t ;
struct TYPE_5__ {scalar_t__ dev; } ;


 int CPSW_PORTS ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_release_resources (int ,int ,int ) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int cpsw_free_slot (struct cpsw_softc*,int *) ;
 int cpsw_intr_detach (struct cpsw_softc*) ;
 int device_delete_child (int ,scalar_t__) ;
 int device_delete_children (int ) ;
 struct cpsw_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int free (scalar_t__,int ) ;
 int irq_res_spec ;
 int mtx_destroy (int *) ;
 int nitems (int *) ;

__attribute__((used)) static int
cpsw_detach(device_t dev)
{
 struct cpsw_softc *sc;
 int error, i;

 bus_generic_detach(dev);
  sc = device_get_softc(dev);

 for (i = 0; i < CPSW_PORTS; i++) {
  if (sc->port[i].dev)
   device_delete_child(dev, sc->port[i].dev);
 }

 if (device_is_attached(dev)) {
  callout_stop(&sc->watchdog.callout);
  callout_drain(&sc->watchdog.callout);
 }


 cpsw_intr_detach(sc);


 for (i = 0; i < nitems(sc->_slots); ++i)
  cpsw_free_slot(sc, &sc->_slots[i]);


 if (sc->nullpad)
  free(sc->nullpad, M_DEVBUF);


 if (sc->mbuf_dtag) {
  error = bus_dma_tag_destroy(sc->mbuf_dtag);
  KASSERT(error == 0, ("Unable to destroy DMA tag"));
 }


 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);
 bus_release_resources(dev, irq_res_spec, sc->irq_res);


 mtx_destroy(&sc->rx.lock);
 mtx_destroy(&sc->tx.lock);


 error = bus_generic_detach(dev);
 if (error != 0)
  return (error);

 return (device_delete_children(dev));
}
