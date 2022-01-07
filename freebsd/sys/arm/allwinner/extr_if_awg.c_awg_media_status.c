
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct awg_softc {int miibus; } ;
typedef int if_t ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 struct awg_softc* if_getsoftc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
awg_media_status(if_t ifp, struct ifmediareq *ifmr)
{
 struct awg_softc *sc;
 struct mii_data *mii;

 sc = if_getsoftc(ifp);
 mii = device_get_softc(sc->miibus);

 AWG_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 AWG_UNLOCK(sc);
}
