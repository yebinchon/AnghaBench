
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct emac_softc {int emac_tick_ch; scalar_t__ emac_link; struct ifnet* emac_ifp; } ;


 int EMAC_ASSERT_LOCKED (struct emac_softc*) ;
 int EMAC_CTL ;
 int EMAC_CTL_RST ;
 int EMAC_CTL_RX_EN ;
 int EMAC_CTL_TX_EN ;
 int EMAC_INT_CTL ;
 int EMAC_INT_STA ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_stop (int *) ;

__attribute__((used)) static void
emac_stop_locked(struct emac_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg_val;

 EMAC_ASSERT_LOCKED(sc);

 ifp = sc->emac_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->emac_link = 0;


 EMAC_WRITE_REG(sc, EMAC_INT_CTL, 0);
 reg_val = EMAC_READ_REG(sc, EMAC_INT_STA);
 EMAC_WRITE_REG(sc, EMAC_INT_STA, reg_val);


 reg_val = EMAC_READ_REG(sc, EMAC_CTL);
 reg_val &= ~(EMAC_CTL_RST | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN);
 EMAC_WRITE_REG(sc, EMAC_CTL, reg_val);

 callout_stop(&sc->emac_tick_ch);
}
