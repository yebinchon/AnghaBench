
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct cpswp_softc {int swsc; int unit; int mii_callout; struct ifnet* ifp; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK_ASSERT (struct cpswp_softc*) ;
 int CPSW_SL_MACCONTROL (int ) ;
 int CPSW_SL_MACTL_GMII_ENABLE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_stop (int *) ;
 int cpsw_init (int ) ;
 scalar_t__ cpsw_ports_down (int ) ;
 int cpsw_read_4 (int ,int ) ;
 int cpsw_reset (int ) ;
 int cpsw_rx_teardown (int ) ;
 int cpsw_stats_collect (int ) ;
 int cpsw_tx_teardown (int ) ;
 int cpsw_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
cpswp_stop_locked(struct cpswp_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 ifp = sc->ifp;
 CPSW_DEBUGF(sc->swsc, (""));
 CPSW_PORT_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;


 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 ifp->if_drv_flags |= IFF_DRV_OACTIVE;


 callout_stop(&sc->mii_callout);


 if (cpsw_ports_down(sc->swsc)) {
  cpsw_rx_teardown(sc->swsc);
  cpsw_tx_teardown(sc->swsc);
 }


 reg = cpsw_read_4(sc->swsc, CPSW_SL_MACCONTROL(sc->unit));
 reg &= ~CPSW_SL_MACTL_GMII_ENABLE;
 cpsw_write_4(sc->swsc, CPSW_SL_MACCONTROL(sc->unit), reg);

 if (cpsw_ports_down(sc->swsc)) {

  cpsw_stats_collect(sc->swsc);

  cpsw_reset(sc->swsc);
  cpsw_init(sc->swsc);
 }
}
