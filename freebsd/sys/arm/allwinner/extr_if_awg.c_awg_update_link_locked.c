
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct awg_softc {int link; int miibus; int ifp; } ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int BASIC_CTL_DUPLEX ;
 int BASIC_CTL_SPEED ;
 int BASIC_CTL_SPEED_10 ;
 int BASIC_CTL_SPEED_100 ;
 int BASIC_CTL_SPEED_1000 ;
 int BASIC_CTL_SPEED_SHIFT ;
 int EMAC_BASIC_CTL_0 ;
 int EMAC_RX_CTL_0 ;
 int EMAC_TX_FLOW_CTL ;
 int IFF_DRV_RUNNING ;




 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int const IFM_SUBTYPE (int ) ;
 int PAUSE_TIME ;
 int PAUSE_TIME_SHIFT ;
 int RD4 (struct awg_softc*,int ) ;
 int RX_FLOW_CTL_EN ;
 int TX_FLOW_CTL_EN ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_pause_time ;
 struct mii_data* device_get_softc (int ) ;
 int if_getdrvflags (int ) ;

__attribute__((used)) static void
awg_update_link_locked(struct awg_softc *sc)
{
 struct mii_data *mii;
 uint32_t val;

 AWG_ASSERT_LOCKED(sc);

 if ((if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING) == 0)
  return;
 mii = device_get_softc(sc->miibus);

 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 130:
  case 131:
  case 129:
  case 128:
   sc->link = 1;
   break;
  default:
   sc->link = 0;
   break;
  }
 } else
  sc->link = 0;

 if (sc->link == 0)
  return;

 val = RD4(sc, EMAC_BASIC_CTL_0);
 val &= ~(BASIC_CTL_SPEED | BASIC_CTL_DUPLEX);

 if (IFM_SUBTYPE(mii->mii_media_active) == 130 ||
     IFM_SUBTYPE(mii->mii_media_active) == 131)
  val |= BASIC_CTL_SPEED_1000 << BASIC_CTL_SPEED_SHIFT;
 else if (IFM_SUBTYPE(mii->mii_media_active) == 129)
  val |= BASIC_CTL_SPEED_100 << BASIC_CTL_SPEED_SHIFT;
 else
  val |= BASIC_CTL_SPEED_10 << BASIC_CTL_SPEED_SHIFT;

 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  val |= BASIC_CTL_DUPLEX;

 WR4(sc, EMAC_BASIC_CTL_0, val);

 val = RD4(sc, EMAC_RX_CTL_0);
 val &= ~RX_FLOW_CTL_EN;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
  val |= RX_FLOW_CTL_EN;
 WR4(sc, EMAC_RX_CTL_0, val);

 val = RD4(sc, EMAC_TX_FLOW_CTL);
 val &= ~(PAUSE_TIME|TX_FLOW_CTL_EN);
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
  val |= TX_FLOW_CTL_EN;
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  val |= awg_pause_time << PAUSE_TIME_SHIFT;
 WR4(sc, EMAC_TX_FLOW_CTL, val);
}
