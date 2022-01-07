
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpswp_softc {int dummy; } ;
struct TYPE_3__ {int active; } ;
struct cpsw_softc {int active_slave; TYPE_2__* port; int dualemac; TYPE_1__ tx; int dev; } ;
struct TYPE_4__ {int dev; } ;


 int CPSW_CPDMA_TX_CP (int ) ;
 int CPSW_CPDMA_TX_HDP (int ) ;
 int CPSW_PORTS ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int cpsw_debugf_head (char*) ;
 int cpsw_dump_queue (struct cpsw_softc*,int *) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpswp_stop_locked (struct cpswp_softc*) ;
 struct cpswp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,int ,int) ;

__attribute__((used)) static void
cpsw_tx_watchdog_full_reset(struct cpsw_softc *sc)
{
 struct cpswp_softc *psc;
 int i;

 cpsw_debugf_head("CPSW watchdog");
 device_printf(sc->dev, "watchdog timeout\n");
 printf("CPSW_CPDMA_TX%d_HDP=0x%x\n", 0,
     cpsw_read_4(sc, CPSW_CPDMA_TX_HDP(0)));
 printf("CPSW_CPDMA_TX%d_CP=0x%x\n", 0,
     cpsw_read_4(sc, CPSW_CPDMA_TX_CP(0)));
 cpsw_dump_queue(sc, &sc->tx.active);
 for (i = 0; i < CPSW_PORTS; i++) {
  if (!sc->dualemac && i != sc->active_slave)
   continue;
  psc = device_get_softc(sc->port[i].dev);
  CPSW_PORT_LOCK(psc);
  cpswp_stop_locked(psc);
  CPSW_PORT_UNLOCK(psc);
 }
}
