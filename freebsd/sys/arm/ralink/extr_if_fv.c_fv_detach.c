
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct fv_softc {int fv_detach; int fv_mtx; scalar_t__ fv_res; int fv_rid; scalar_t__ fv_irq; scalar_t__ fv_intrhand; scalar_t__ fv_miibus; int fv_link_task; struct ifnet* fv_ifp; } ;
typedef int device_t ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int device_delete_child (int ,scalar_t__) ;
 struct fv_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int fv_dma_free (struct fv_softc*) ;
 int fv_stop (struct fv_softc*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
fv_detach(device_t dev)
{
 struct fv_softc *sc = device_get_softc(dev);
 struct ifnet *ifp = sc->fv_ifp;

 KASSERT(mtx_initialized(&sc->fv_mtx), ("vr mutex not initialized"));


 if (device_is_attached(dev)) {
  FV_LOCK(sc);
  sc->fv_detach = 1;
  fv_stop(sc);
  FV_UNLOCK(sc);
  taskqueue_drain(taskqueue_swi, &sc->fv_link_task);
  ether_ifdetach(ifp);
 }




 bus_generic_detach(dev);

 if (sc->fv_intrhand)
  bus_teardown_intr(dev, sc->fv_irq, sc->fv_intrhand);
 if (sc->fv_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->fv_irq);

 if (sc->fv_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->fv_rid,
      sc->fv_res);

 if (ifp)
  if_free(ifp);

 fv_dma_free(sc);

 mtx_destroy(&sc->fv_mtx);

 return (0);

}
