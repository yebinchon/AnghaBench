
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct cpswp_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct cpswp_softc {struct mii_data* mii; int swsc; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
cpswp_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct cpswp_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 CPSW_DEBUGF(sc->swsc, (""));
 CPSW_PORT_LOCK(sc);

 mii = sc->mii;
 mii_pollstat(mii);

 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 CPSW_PORT_UNLOCK(sc);
}
