
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct awg_softc {int link; int stat_ch; int miibus; int ifp; } ;
typedef int if_t ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int IFF_DRV_RUNNING ;
 int awg_start_locked (struct awg_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct awg_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int if_getdrvflags (int ) ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
awg_tick(void *softc)
{
 struct awg_softc *sc;
 struct mii_data *mii;
 if_t ifp;
 int link;

 sc = softc;
 ifp = sc->ifp;
 mii = device_get_softc(sc->miibus);

 AWG_ASSERT_LOCKED(sc);

 if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0)
  return;

 link = sc->link;
 mii_tick(mii);
 if (sc->link && !link)
  awg_start_locked(sc);

 callout_reset(&sc->stat_ch, hz, awg_tick, sc);
}
