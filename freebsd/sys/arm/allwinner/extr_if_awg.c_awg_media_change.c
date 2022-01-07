
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct awg_softc {int miibus; } ;
typedef int if_t ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 struct awg_softc* if_getsoftc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
awg_media_change(if_t ifp)
{
 struct awg_softc *sc;
 struct mii_data *mii;
 int error;

 sc = if_getsoftc(ifp);
 mii = device_get_softc(sc->miibus);

 AWG_LOCK(sc);
 error = mii_mediachg(mii);
 AWG_UNLOCK(sc);

 return (error);
}
