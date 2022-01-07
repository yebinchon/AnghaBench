
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct fv_softc {int fv_stat_callout; int fv_miibus; } ;


 int FV_LOCK_ASSERT (struct fv_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct fv_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
fv_tick(void *xsc)
{
 struct fv_softc *sc = xsc;
 callout_reset(&sc->fv_stat_callout, hz, fv_tick, sc);
}
