
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct awg_softc {int dummy; } ;


 int EMAC_INT_EN ;
 int RX_INT_EN ;
 int TX_BUF_UA_INT_EN ;
 int TX_INT_EN ;
 int WR4 (struct awg_softc*,int ,int) ;

__attribute__((used)) static void
awg_enable_intr(struct awg_softc *sc)
{

 WR4(sc, EMAC_INT_EN, RX_INT_EN | TX_INT_EN | TX_BUF_UA_INT_EN);
}
