
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_snd; int if_drv_flags; } ;
struct emac_softc {scalar_t__ emac_watchdog_timer; scalar_t__ emac_link; struct ifnet* emac_ifp; } ;


 int EMAC_ASSERT_LOCKED (struct emac_softc*) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 scalar_t__ bootverbose ;
 int emac_init_locked (struct emac_softc*) ;
 int emac_start_locked (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*) ;

__attribute__((used)) static void
emac_watchdog(struct emac_softc *sc)
{
 struct ifnet *ifp;

 EMAC_ASSERT_LOCKED(sc);

 if (sc->emac_watchdog_timer == 0 || --sc->emac_watchdog_timer)
  return;

 ifp = sc->emac_ifp;

 if (sc->emac_link == 0) {
  if (bootverbose)
   if_printf(sc->emac_ifp, "watchdog timeout "
       "(missed link)\n");
 } else
  if_printf(sc->emac_ifp, "watchdog timeout -- resetting\n");

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 emac_init_locked(sc);
 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  emac_start_locked(ifp);
}
