
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct emac_softc {struct ifnet* emac_ifp; } ;
typedef int device_t ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int IFF_DRV_RUNNING ;
 struct emac_softc* device_get_softc (int ) ;
 int emac_stop_locked (struct emac_softc*) ;

__attribute__((used)) static int
emac_suspend(device_t dev)
{
 struct emac_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);

 EMAC_LOCK(sc);
 ifp = sc->emac_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  emac_stop_locked(sc);
 EMAC_UNLOCK(sc);

 return (0);
}
