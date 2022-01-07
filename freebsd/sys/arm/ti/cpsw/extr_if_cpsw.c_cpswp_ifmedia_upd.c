
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {struct cpswp_softc* if_softc; } ;
struct cpswp_softc {TYPE_2__* mii; int media_status; int swsc; } ;
struct TYPE_3__ {int ifm_media; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int mii_mediachg (TYPE_2__*) ;

__attribute__((used)) static int
cpswp_ifmedia_upd(struct ifnet *ifp)
{
 struct cpswp_softc *sc;

 sc = ifp->if_softc;
 CPSW_DEBUGF(sc->swsc, (""));
 CPSW_PORT_LOCK(sc);
 mii_mediachg(sc->mii);
 sc->media_status = sc->mii->mii_media.ifm_media;
 CPSW_PORT_UNLOCK(sc);

 return (0);
}
