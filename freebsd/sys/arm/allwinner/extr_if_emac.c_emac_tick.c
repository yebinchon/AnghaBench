
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct emac_softc {int emac_tick_ch; int emac_miibus; } ;


 int callout_reset (int *,int ,void (*) (void*),struct emac_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int emac_watchdog (struct emac_softc*) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
emac_tick(void *arg)
{
 struct emac_softc *sc;
 struct mii_data *mii;

 sc = (struct emac_softc *)arg;
 mii = device_get_softc(sc->emac_miibus);
 mii_tick(mii);

 emac_watchdog(sc);
 callout_reset(&sc->emac_tick_ch, hz, emac_tick, sc);
}
