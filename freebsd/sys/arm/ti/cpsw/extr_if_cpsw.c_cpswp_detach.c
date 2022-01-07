
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpswp_softc {int lock; int ifp; int mii_callout; int swsc; } ;
typedef int device_t ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int cpswp_stop_locked (struct cpswp_softc*) ;
 struct cpswp_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (int ) ;
 int if_free (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
cpswp_detach(device_t dev)
{
 struct cpswp_softc *sc;

 sc = device_get_softc(dev);
 CPSW_DEBUGF(sc->swsc, (""));
 if (device_is_attached(dev)) {
  ether_ifdetach(sc->ifp);
  CPSW_PORT_LOCK(sc);
  cpswp_stop_locked(sc);
  CPSW_PORT_UNLOCK(sc);
  callout_drain(&sc->mii_callout);
 }

 bus_generic_detach(dev);

 if_free(sc->ifp);
 mtx_destroy(&sc->lock);

 return (0);
}
