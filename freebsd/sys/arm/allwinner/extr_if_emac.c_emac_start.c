
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct emac_softc* if_softc; } ;
struct emac_softc {int dummy; } ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int emac_start_locked (struct ifnet*) ;

__attribute__((used)) static void
emac_start(struct ifnet *ifp)
{
 struct emac_softc *sc;

 sc = ifp->if_softc;
 EMAC_LOCK(sc);
 emac_start_locked(ifp);
 EMAC_UNLOCK(sc);
}
