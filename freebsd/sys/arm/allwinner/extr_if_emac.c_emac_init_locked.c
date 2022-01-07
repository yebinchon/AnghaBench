
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct emac_softc {int emac_tick_ch; int emac_miibus; scalar_t__ emac_link; struct ifnet* emac_ifp; } ;


 int DELAY (int) ;
 int EMAC_ASSERT_LOCKED (struct emac_softc*) ;
 int EMAC_INT_CTL ;
 int EMAC_INT_EN ;
 int EMAC_INT_STA ;
 int EMAC_MAC_A0 ;
 int EMAC_MAC_A1 ;
 int EMAC_MAC_CLRT ;
 int EMAC_MAC_CTL0 ;
 int EMAC_MAC_CTL0_SETUP ;
 int EMAC_MAC_CTL0_SOFT_RST ;
 int EMAC_MAC_CTL1 ;
 int EMAC_MAC_CTL1_SETUP ;
 int EMAC_MAC_CW ;
 int EMAC_MAC_IPGR ;
 int EMAC_MAC_IPGT ;
 int EMAC_MAC_IPGT_FD ;
 int EMAC_MAC_MAXF ;
 int EMAC_MAC_MCFG ;
 int EMAC_MAC_MFL ;
 int EMAC_MAC_NBTB_IPG1 ;
 int EMAC_MAC_NBTB_IPG2 ;
 int EMAC_MAC_RM ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;
 int EMAC_RX_CTL ;
 int EMAC_RX_FBC ;
 int EMAC_RX_FLUSH_FIFO ;
 int EMAC_RX_SETUP ;
 int EMAC_RX_TM ;
 int EMAC_TX_AB_M ;
 int EMAC_TX_MODE ;
 int EMAC_TX_TM ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int callout_reset (int *,int ,int ,struct emac_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int emac_set_rx_mode (struct emac_softc*) ;
 int emac_tick ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
emac_init_locked(struct emac_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint32_t reg_val;
 uint8_t *eaddr;

 EMAC_ASSERT_LOCKED(sc);

 ifp = sc->emac_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;


 reg_val = EMAC_READ_REG(sc, EMAC_RX_CTL);
 reg_val |= EMAC_RX_FLUSH_FIFO;
 EMAC_WRITE_REG(sc, EMAC_RX_CTL, reg_val);
 DELAY(1);


 reg_val = EMAC_READ_REG(sc, EMAC_MAC_CTL0);
 reg_val &= (~EMAC_MAC_CTL0_SOFT_RST);
 EMAC_WRITE_REG(sc, EMAC_MAC_CTL0, reg_val);


 reg_val = EMAC_READ_REG(sc, EMAC_MAC_MCFG);
 reg_val &= (~(0xf << 2));
 reg_val |= (0xd << 2);
 EMAC_WRITE_REG(sc, EMAC_MAC_MCFG, reg_val);


 EMAC_WRITE_REG(sc, EMAC_RX_FBC, 0);


 EMAC_WRITE_REG(sc, EMAC_INT_CTL, 0);
 reg_val = EMAC_READ_REG(sc, EMAC_INT_STA);
 EMAC_WRITE_REG(sc, EMAC_INT_STA, reg_val);
 DELAY(1);


 reg_val = EMAC_READ_REG(sc, EMAC_TX_MODE);
 reg_val |= EMAC_TX_AB_M;
 reg_val &= EMAC_TX_TM;
 EMAC_WRITE_REG(sc, EMAC_TX_MODE, reg_val);


 reg_val = EMAC_READ_REG(sc, EMAC_RX_CTL);
 reg_val |= EMAC_RX_SETUP;
 reg_val &= EMAC_RX_TM;
 EMAC_WRITE_REG(sc, EMAC_RX_CTL, reg_val);


 reg_val = EMAC_READ_REG(sc, EMAC_MAC_CTL0);
 reg_val |= EMAC_MAC_CTL0_SETUP;
 EMAC_WRITE_REG(sc, EMAC_MAC_CTL0, reg_val);


 reg_val = EMAC_READ_REG(sc, EMAC_MAC_CTL1);
 reg_val |= EMAC_MAC_CTL1_SETUP;
 EMAC_WRITE_REG(sc, EMAC_MAC_CTL1, reg_val);


 EMAC_WRITE_REG(sc, EMAC_MAC_IPGT, EMAC_MAC_IPGT_FD);


 EMAC_WRITE_REG(sc, EMAC_MAC_IPGR, EMAC_MAC_NBTB_IPG2 |
     (EMAC_MAC_NBTB_IPG1 << 8));


 EMAC_WRITE_REG(sc, EMAC_MAC_CLRT, EMAC_MAC_RM | (EMAC_MAC_CW << 8));


 EMAC_WRITE_REG(sc, EMAC_MAC_MAXF, EMAC_MAC_MFL);


 eaddr = IF_LLADDR(ifp);
 EMAC_WRITE_REG(sc, EMAC_MAC_A1, eaddr[0] << 16 |
     eaddr[1] << 8 | eaddr[2]);
 EMAC_WRITE_REG(sc, EMAC_MAC_A0, eaddr[3] << 16 |
     eaddr[4] << 8 | eaddr[5]);


 emac_set_rx_mode(sc);


 reg_val = EMAC_READ_REG(sc, EMAC_INT_CTL);
 reg_val |= EMAC_INT_EN;
 EMAC_WRITE_REG(sc, EMAC_INT_CTL, reg_val);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc->emac_link = 0;


 mii = device_get_softc(sc->emac_miibus);
 mii_mediachg(mii);

 callout_reset(&sc->emac_tick_ch, hz, emac_tick, sc);
}
