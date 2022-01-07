
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_snd; } ;
struct emac_softc {struct ifnet* emac_ifp; int emac_rx_process_limit; } ;


 int EMAC_INT_CTL ;
 int EMAC_INT_EN ;
 int EMAC_INT_STA ;
 int EMAC_INT_STA_RX ;
 int EMAC_INT_STA_TX ;
 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int emac_rxeof (struct emac_softc*,int ) ;
 int emac_start_locked (struct ifnet*) ;
 int emac_txeof (struct emac_softc*,int) ;

__attribute__((used)) static void
emac_intr(void *arg)
{
 struct emac_softc *sc;
 struct ifnet *ifp;
 uint32_t reg_val;

 sc = (struct emac_softc *)arg;
 EMAC_LOCK(sc);


 EMAC_WRITE_REG(sc, EMAC_INT_CTL, 0);

 reg_val = EMAC_READ_REG(sc, EMAC_INT_STA);

 EMAC_WRITE_REG(sc, EMAC_INT_STA, reg_val);


 if (reg_val & EMAC_INT_STA_RX)
  emac_rxeof(sc, sc->emac_rx_process_limit);


 if (reg_val & EMAC_INT_STA_TX) {
  emac_txeof(sc, reg_val);
  ifp = sc->emac_ifp;
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   emac_start_locked(ifp);
 }


 reg_val = EMAC_READ_REG(sc, EMAC_INT_CTL);
 reg_val |= EMAC_INT_EN;
 EMAC_WRITE_REG(sc, EMAC_INT_CTL, reg_val);
 EMAC_UNLOCK(sc);
}
