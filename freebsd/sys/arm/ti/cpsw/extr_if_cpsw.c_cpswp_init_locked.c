
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct cpswp_softc {int unit; int vlan; int mii_callout; int mii; TYPE_3__* swsc; int init_uptime; struct ifnet* ifp; } ;
struct TYPE_13__ {int vid; } ;
struct TYPE_11__ {int running; } ;
struct TYPE_10__ {int running; } ;
struct TYPE_12__ {scalar_t__ dualemac; TYPE_2__ tx; TYPE_1__ rx; } ;


 int ALE_PORTCTL_FORWARD ;
 int ALE_PORTCTL_INGRESS ;
 int CPSW_ALE_PORTCTL (int) ;
 int CPSW_DEBUGF (TYPE_3__*,char*) ;
 int CPSW_PORT_LOCK_ASSERT (struct cpswp_softc*) ;
 int CPSW_PORT_P_TX_PRI_MAP (int) ;
 int CPSW_PORT_P_VLAN (int) ;
 int CPSW_SL_MACCONTROL (int) ;
 int CPSW_SL_MACTL_GMII_ENABLE ;
 int CPSW_SL_RX_MAXLEN (int) ;
 int CPSW_SL_RX_PRI_MAP (int) ;
 int CPSW_VLANS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,int ,struct cpswp_softc*) ;
 int cpsw_ale_update_vlan_table (TYPE_3__*,int,int,int,int,int ) ;
 int cpsw_init (TYPE_3__*) ;
 int cpsw_read_4 (TYPE_3__*,int ) ;
 int cpsw_reset (TYPE_3__*) ;
 TYPE_4__* cpsw_vgroups ;
 int cpsw_write_4 (TYPE_3__*,int ,int) ;
 int cpswp_ale_update_addresses (struct cpswp_softc*,int) ;
 int cpswp_tick ;
 int getbinuptime (int *) ;
 int hz ;
 int mii_mediachg (int ) ;

__attribute__((used)) static void
cpswp_init_locked(void *arg)
{



 struct cpswp_softc *sc = arg;
 struct ifnet *ifp;
 uint32_t reg;

 CPSW_DEBUGF(sc->swsc, (""));
 CPSW_PORT_LOCK_ASSERT(sc);
 ifp = sc->ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 getbinuptime(&sc->init_uptime);

 if (!sc->swsc->rx.running && !sc->swsc->tx.running) {

  cpsw_reset(sc->swsc);
  cpsw_init(sc->swsc);
 }


 cpsw_write_4(sc->swsc, CPSW_SL_RX_PRI_MAP(sc->unit), 0x76543210);
 cpsw_write_4(sc->swsc, CPSW_PORT_P_TX_PRI_MAP(sc->unit + 1),
     0x33221100);
 cpsw_write_4(sc->swsc, CPSW_SL_RX_MAXLEN(sc->unit), 0x5f2);



 reg = cpsw_read_4(sc->swsc, CPSW_SL_MACCONTROL(sc->unit));
 reg |= CPSW_SL_MACTL_GMII_ENABLE;
 cpsw_write_4(sc->swsc, CPSW_SL_MACCONTROL(sc->unit), reg);


 cpsw_write_4(sc->swsc, CPSW_ALE_PORTCTL(sc->unit + 1),
     ALE_PORTCTL_INGRESS | ALE_PORTCTL_FORWARD);
 cpswp_ale_update_addresses(sc, 1);

 if (sc->swsc->dualemac) {

  cpsw_write_4(sc->swsc, CPSW_PORT_P_VLAN(sc->unit + 1),
      sc->vlan & 0xfff);
  cpsw_ale_update_vlan_table(sc->swsc, sc->vlan,
      (1 << (sc->unit + 1)) | (1 << 0),
      (1 << (sc->unit + 1)) | (1 << 0),
      (1 << (sc->unit + 1)) | (1 << 0), 0);
 }

 mii_mediachg(sc->mii);
 callout_reset(&sc->mii_callout, hz, cpswp_tick, sc);
 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
