
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct awg_softc {int ifp; } ;


 int AWG_LOCK (struct awg_softc*) ;
 int AWG_UNLOCK (struct awg_softc*) ;
 int EMAC_INT_STA ;
 int RD4 (struct awg_softc*,int ) ;
 int RX_INT ;
 int TX_BUF_UA_INT ;
 int TX_INT ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_rxintr (struct awg_softc*) ;
 int awg_start_locked (struct awg_softc*) ;
 int awg_txeof (struct awg_softc*) ;
 int if_sendq_empty (int ) ;

__attribute__((used)) static void
awg_intr(void *arg)
{
 struct awg_softc *sc;
 uint32_t val;

 sc = arg;

 AWG_LOCK(sc);
 val = RD4(sc, EMAC_INT_STA);
 WR4(sc, EMAC_INT_STA, val);

 if (val & RX_INT)
  awg_rxintr(sc);

 if (val & TX_INT)
  awg_txeof(sc);

 if (val & (TX_INT | TX_BUF_UA_INT)) {
  if (!if_sendq_empty(sc->ifp))
   awg_start_locked(sc);
 }

 AWG_UNLOCK(sc);
}
