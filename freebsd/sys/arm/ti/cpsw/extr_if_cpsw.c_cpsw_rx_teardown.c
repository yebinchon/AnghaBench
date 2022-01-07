
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int teardown; scalar_t__ running; } ;
struct cpsw_softc {TYPE_1__ rx; int dev; } ;


 int CPSW_CPDMA_RX_TEARDOWN ;
 int CPSW_DEBUGF (struct cpsw_softc*,char*) ;
 int CPSW_RX_LOCK (struct cpsw_softc*) ;
 int CPSW_RX_UNLOCK (struct cpsw_softc*) ;
 int DELAY (int) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
cpsw_rx_teardown(struct cpsw_softc *sc)
{
 int i = 0;

 CPSW_RX_LOCK(sc);
 CPSW_DEBUGF(sc, ("starting RX teardown"));
 sc->rx.teardown = 1;
 cpsw_write_4(sc, CPSW_CPDMA_RX_TEARDOWN, 0);
 CPSW_RX_UNLOCK(sc);
 while (sc->rx.running) {
  if (++i > 10) {
   device_printf(sc->dev,
       "Unable to cleanly shutdown receiver\n");
   return;
  }
  DELAY(200);
 }
 if (!sc->rx.running)
  CPSW_DEBUGF(sc, ("finished RX teardown (%d retries)", i));
}
