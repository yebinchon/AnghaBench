
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct emac_softc {int emac_mtx; TYPE_1__* emac_ifp; int * emac_irq; int * emac_res; int * emac_clk; int emac_dev; int * emac_miibus; int * emac_intrhand; int emac_tick_ch; } ;
typedef int device_t ;
struct TYPE_3__ {int if_drv_flags; } ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int IFF_DRV_RUNNING ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int clk_disable (int *) ;
 int device_delete_child (int ,int *) ;
 struct emac_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int emac_stop_locked (struct emac_softc*) ;
 int ether_ifdetach (TYPE_1__*) ;
 int if_free (TYPE_1__*) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;

__attribute__((used)) static int
emac_detach(device_t dev)
{
 struct emac_softc *sc;

 sc = device_get_softc(dev);
 sc->emac_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 if (device_is_attached(dev)) {
  ether_ifdetach(sc->emac_ifp);
  EMAC_LOCK(sc);
  emac_stop_locked(sc);
  EMAC_UNLOCK(sc);
  callout_drain(&sc->emac_tick_ch);
 }

 if (sc->emac_intrhand != ((void*)0))
  bus_teardown_intr(sc->emac_dev, sc->emac_irq,
      sc->emac_intrhand);

 if (sc->emac_miibus != ((void*)0)) {
  device_delete_child(sc->emac_dev, sc->emac_miibus);
  bus_generic_detach(sc->emac_dev);
 }

 if (sc->emac_clk != ((void*)0))
  clk_disable(sc->emac_clk);

 if (sc->emac_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->emac_res);

 if (sc->emac_irq != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->emac_irq);

 if (sc->emac_ifp != ((void*)0))
  if_free(sc->emac_ifp);

 if (mtx_initialized(&sc->emac_mtx))
  mtx_destroy(&sc->emac_mtx);

 return (0);
}
