
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_softc {int tx; } ;


 int CPSW_CPDMA_CPDMA_EOI_VECTOR ;
 int CPSW_CPDMA_TX_CP (int ) ;
 int CPSW_TX_LOCK (struct cpsw_softc*) ;
 int CPSW_TX_UNLOCK (struct cpsw_softc*) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_tx_dequeue (struct cpsw_softc*) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int) ;
 int cpsw_write_cp (struct cpsw_softc*,int *,int) ;

__attribute__((used)) static void
cpsw_intr_tx(void *arg)
{
 struct cpsw_softc *sc;

 sc = (struct cpsw_softc *)arg;
 CPSW_TX_LOCK(sc);
 if (cpsw_read_4(sc, CPSW_CPDMA_TX_CP(0)) == 0xfffffffc)
  cpsw_write_cp(sc, &sc->tx, 0xfffffffc);
 cpsw_tx_dequeue(sc);
 cpsw_write_4(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 2);
 CPSW_TX_UNLOCK(sc);
}
