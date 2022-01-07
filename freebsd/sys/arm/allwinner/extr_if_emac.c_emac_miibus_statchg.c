
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct emac_softc {int emac_link; struct ifnet* emac_ifp; int emac_miibus; } ;
typedef int device_t ;


 int EMAC_CTL ;
 int EMAC_CTL_RST ;
 int EMAC_CTL_RX_EN ;
 int EMAC_CTL_TX_EN ;
 int EMAC_MAC_IPGT ;
 int EMAC_MAC_IPGT_FD ;
 int EMAC_MAC_IPGT_HD ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
emac_miibus_statchg(device_t dev)
{
 struct emac_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 uint32_t reg_val;

 sc = device_get_softc(dev);

 mii = device_get_softc(sc->emac_miibus);
 ifp = sc->emac_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->emac_link = 0;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->emac_link = 1;
   break;
  default:
   break;
  }
 }

 if (sc->emac_link != 0) {
  reg_val = EMAC_READ_REG(sc, EMAC_MAC_IPGT);
  if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
   reg_val &= ~EMAC_MAC_IPGT_HD;
   reg_val |= EMAC_MAC_IPGT_FD;
  } else {
   reg_val &= ~EMAC_MAC_IPGT_FD;
   reg_val |= EMAC_MAC_IPGT_HD;
  }
  EMAC_WRITE_REG(sc, EMAC_MAC_IPGT, reg_val);

  reg_val = EMAC_READ_REG(sc, EMAC_CTL);
  reg_val |= EMAC_CTL_RST | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN;
  EMAC_WRITE_REG(sc, EMAC_CTL, reg_val);
 } else {

  reg_val = EMAC_READ_REG(sc, EMAC_CTL);
  reg_val &= ~(EMAC_CTL_RST | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN);
  EMAC_WRITE_REG(sc, EMAC_CTL, reg_val);
 }
}
