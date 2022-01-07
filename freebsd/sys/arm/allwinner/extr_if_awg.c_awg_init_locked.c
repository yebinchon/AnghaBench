
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int dummy; } ;
struct awg_softc {int stat_ch; int ifp; int miibus; } ;
typedef int if_t ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int BASIC_CTL_BURST_LEN_SHIFT ;
 int BASIC_CTL_RX_TX_PRI ;
 int CHECK_CRC ;
 int EMAC_BASIC_CTL_1 ;
 int EMAC_RX_CTL_0 ;
 int EMAC_RX_CTL_1 ;
 int EMAC_TX_CTL_0 ;
 int EMAC_TX_CTL_1 ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RD4 (struct awg_softc*,int ) ;
 int RX_DMA_EN ;
 int RX_EN ;
 int RX_MD ;
 int TX_DMA_EN ;
 int TX_EN ;
 int TX_MD ;
 int TX_NEXT_FRAME ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_burst_len ;
 int awg_disable_intr (struct awg_softc*) ;
 int awg_enable_intr (struct awg_softc*) ;
 scalar_t__ awg_rx_tx_pri ;
 int awg_setup_rxfilter (struct awg_softc*) ;
 int awg_tick ;
 int callout_reset (int *,int ,int ,struct awg_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_setdrvflagbits (int ,int,int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
awg_init_locked(struct awg_softc *sc)
{
 struct mii_data *mii;
 uint32_t val;
 if_t ifp;

 mii = device_get_softc(sc->miibus);
 ifp = sc->ifp;

 AWG_ASSERT_LOCKED(sc);

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
  return;

 awg_setup_rxfilter(sc);


 val = awg_burst_len << BASIC_CTL_BURST_LEN_SHIFT;
 if (awg_rx_tx_pri)
  val |= BASIC_CTL_RX_TX_PRI;
 WR4(sc, EMAC_BASIC_CTL_1, val);
 awg_enable_intr(sc);



 val = RD4(sc, EMAC_TX_CTL_1);
 WR4(sc, EMAC_TX_CTL_1, val | TX_DMA_EN | TX_MD | TX_NEXT_FRAME);


 val = RD4(sc, EMAC_RX_CTL_1);
 WR4(sc, EMAC_RX_CTL_1, val | RX_DMA_EN | RX_MD);


 val = RD4(sc, EMAC_TX_CTL_0);
 WR4(sc, EMAC_TX_CTL_0, val | TX_EN);


 val = RD4(sc, EMAC_RX_CTL_0);
 WR4(sc, EMAC_RX_CTL_0, val | RX_EN | CHECK_CRC);

 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

 mii_mediachg(mii);
 callout_reset(&sc->stat_ch, hz, awg_tick, sc);
}
