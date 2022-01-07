
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timer; int callout; int resets; } ;
struct TYPE_3__ {scalar_t__ active_queue_len; scalar_t__ queue_removes; scalar_t__ queue_removes_at_last_tick; int running; } ;
struct cpsw_softc {TYPE_2__ watchdog; TYPE_1__ tx; } ;


 int CPSW_TX_LOCK (struct cpsw_softc*) ;
 int CPSW_TX_UNLOCK (struct cpsw_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct cpsw_softc*) ;
 scalar_t__ cpsw_tx_dequeue (struct cpsw_softc*) ;
 int cpsw_tx_watchdog_full_reset (struct cpsw_softc*) ;
 int hz ;

__attribute__((used)) static void
cpsw_tx_watchdog(void *msc)
{
 struct cpsw_softc *sc;

 sc = msc;
 CPSW_TX_LOCK(sc);
 if (sc->tx.active_queue_len == 0 || !sc->tx.running) {
  sc->watchdog.timer = 0;
 } else if (sc->tx.queue_removes > sc->tx.queue_removes_at_last_tick) {
  sc->watchdog.timer = 0;
 } else if (cpsw_tx_dequeue(sc) > 0) {
  sc->watchdog.timer = 0;
 } else {

  ++sc->watchdog.timer;
  if (sc->watchdog.timer > 5) {
   sc->watchdog.timer = 0;
   ++sc->watchdog.resets;
   cpsw_tx_watchdog_full_reset(sc);
  }
 }
 sc->tx.queue_removes_at_last_tick = sc->tx.queue_removes;
 CPSW_TX_UNLOCK(sc);


 callout_reset(&sc->watchdog.callout, hz, cpsw_tx_watchdog, sc);
}
