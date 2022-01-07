
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int teardown; int active_queue_len; scalar_t__ running; int active; } ;
struct cpsw_softc {TYPE_1__ tx; int dev; } ;


 int CPSW_CPDMA_TX_TEARDOWN ;
 int CPSW_DEBUGF (struct cpsw_softc*,char*) ;
 int CPSW_TX_LOCK (struct cpsw_softc*) ;
 int CPSW_TX_UNLOCK (struct cpsw_softc*) ;
 int DELAY (int) ;
 int * STAILQ_FIRST (int *) ;
 int cpsw_tx_dequeue (struct cpsw_softc*) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
cpsw_tx_teardown(struct cpsw_softc *sc)
{
 int i = 0;

 CPSW_TX_LOCK(sc);
 CPSW_DEBUGF(sc, ("starting TX teardown"));

 if (STAILQ_FIRST(&sc->tx.active) != ((void*)0))
  cpsw_write_4(sc, CPSW_CPDMA_TX_TEARDOWN, 0);
 else
  sc->tx.teardown = 1;
 cpsw_tx_dequeue(sc);
 while (sc->tx.running && ++i < 10) {
  DELAY(200);
  cpsw_tx_dequeue(sc);
 }
 if (sc->tx.running) {
  device_printf(sc->dev,
      "Unable to cleanly shutdown transmitter\n");
 }
 CPSW_DEBUGF(sc,
     ("finished TX teardown (%d retries, %d idle buffers)", i,
      sc->tx.active_queue_len));
 CPSW_TX_UNLOCK(sc);
}
