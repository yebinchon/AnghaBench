
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct emac_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct emac_softc {int emac_miibus; } ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
emac_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct emac_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->emac_miibus);

 EMAC_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 EMAC_UNLOCK(sc);
}
