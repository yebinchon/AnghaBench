
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int callout; scalar_t__ timer; } ;
struct TYPE_4__ {int active_queue_len; int running; int active; } ;
struct cpsw_softc {TYPE_1__ watchdog; TYPE_2__ tx; TYPE_2__ rx; scalar_t__ dualemac; } ;
struct cpsw_slot {int dummy; } ;


 int ALE_PORTCTL_FORWARD ;
 int ALE_PORTCTL_INGRESS ;
 int CPSW_ALE_CONTROL ;
 int CPSW_ALE_CTL_CLEAR_TBL ;
 int CPSW_ALE_CTL_ENABLE ;
 int CPSW_ALE_CTL_VLAN_AWARE ;
 int CPSW_ALE_PORTCTL (int ) ;
 int CPSW_CPDMA_DMA_INTMASK_SET ;
 int CPSW_CPDMA_RX_BUFFER_OFFSET ;
 int CPSW_CPDMA_RX_CONTROL ;
 int CPSW_CPDMA_RX_FREEBUFFER (int ) ;
 int CPSW_CPDMA_RX_INT (int ) ;
 int CPSW_CPDMA_RX_INTMASK_SET ;
 int CPSW_CPDMA_RX_INT_THRESH (int ) ;
 int CPSW_CPDMA_RX_PENDTHRESH (int ) ;
 int CPSW_CPDMA_TX_CONTROL ;
 int CPSW_CPDMA_TX_INTMASK_SET ;
 int CPSW_PORT_P0_CPDMA_RX_CH_MAP ;
 int CPSW_PORT_P0_CPDMA_TX_PRI_MAP ;
 int CPSW_SS_FLOW_CONTROL ;
 int CPSW_SS_PTYPE ;
 int CPSW_SS_STAT_PORT_EN ;
 int CPSW_TXFRAGS ;
 int CPSW_WR_C_MISC_EN (int ) ;
 int CPSW_WR_C_RX_EN (int ) ;
 int CPSW_WR_C_RX_THRESH_EN (int ) ;
 int CPSW_WR_C_TX_EN (int ) ;
 int CPSW_WR_INT_CONTROL ;
 int CPSW_WR_INT_PACE_EN ;
 int CPSW_WR_INT_PRESCALE_MASK ;
 int MDIOCONTROL ;
 int MDIOCTL_ENABLE ;
 int MDIOCTL_FAULTENB ;
 struct cpsw_slot* STAILQ_FIRST (int *) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int ,int ,struct cpsw_softc*) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_rx_enqueue (struct cpsw_softc*) ;
 int cpsw_tx_watchdog ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int) ;
 int cpsw_write_hdp_slot (struct cpsw_softc*,TYPE_2__*,struct cpsw_slot*) ;
 int hz ;

__attribute__((used)) static void
cpsw_init(struct cpsw_softc *sc)
{
 struct cpsw_slot *slot;
 uint32_t reg;


 reg = cpsw_read_4(sc, CPSW_WR_INT_CONTROL);
 reg &= ~(CPSW_WR_INT_PACE_EN | CPSW_WR_INT_PRESCALE_MASK);
 cpsw_write_4(sc, CPSW_WR_INT_CONTROL, reg);


 cpsw_write_4(sc, CPSW_ALE_CONTROL, CPSW_ALE_CTL_CLEAR_TBL);


 reg = CPSW_ALE_CTL_ENABLE;
 if (sc->dualemac)
  reg |= CPSW_ALE_CTL_VLAN_AWARE;
 cpsw_write_4(sc, CPSW_ALE_CONTROL, reg);


 cpsw_write_4(sc, CPSW_PORT_P0_CPDMA_TX_PRI_MAP, 0x76543210);
 cpsw_write_4(sc, CPSW_PORT_P0_CPDMA_RX_CH_MAP, 0);


 cpsw_write_4(sc, CPSW_ALE_PORTCTL(0),
     ALE_PORTCTL_INGRESS | ALE_PORTCTL_FORWARD);

 cpsw_write_4(sc, CPSW_SS_PTYPE, 0);


 cpsw_write_4(sc, CPSW_SS_STAT_PORT_EN, 7);


 cpsw_write_4(sc, CPSW_SS_FLOW_CONTROL, 0);


 cpsw_write_4(sc, CPSW_CPDMA_RX_BUFFER_OFFSET, 2);


 cpsw_write_4(sc, CPSW_CPDMA_RX_PENDTHRESH(0), 0);
 cpsw_write_4(sc, CPSW_CPDMA_RX_FREEBUFFER(0), 0);


 cpsw_write_4(sc, CPSW_CPDMA_TX_CONTROL, 1);
 cpsw_write_4(sc, CPSW_CPDMA_RX_CONTROL, 1);


 cpsw_write_4(sc, CPSW_WR_C_RX_THRESH_EN(0), 0xFF);
 cpsw_write_4(sc, CPSW_WR_C_RX_EN(0), 0xFF);
 cpsw_write_4(sc, CPSW_WR_C_TX_EN(0), 0xFF);
 cpsw_write_4(sc, CPSW_WR_C_MISC_EN(0), 0x1F);


 cpsw_write_4(sc, CPSW_CPDMA_DMA_INTMASK_SET, 3);


 cpsw_write_4(sc, CPSW_CPDMA_RX_INTMASK_SET,
     CPSW_CPDMA_RX_INT(0) | CPSW_CPDMA_RX_INT_THRESH(0));
 cpsw_write_4(sc, CPSW_CPDMA_TX_INTMASK_SET, 1);



 cpsw_write_4(sc, MDIOCONTROL, MDIOCTL_ENABLE | MDIOCTL_FAULTENB | 0xff);





 slot = STAILQ_FIRST(&sc->tx.active);
 if (slot != ((void*)0))
  cpsw_write_hdp_slot(sc, &sc->tx, slot);
 slot = STAILQ_FIRST(&sc->rx.active);
 if (slot != ((void*)0))
  cpsw_write_hdp_slot(sc, &sc->rx, slot);
 cpsw_rx_enqueue(sc);
 cpsw_write_4(sc, CPSW_CPDMA_RX_FREEBUFFER(0), sc->rx.active_queue_len);
 cpsw_write_4(sc, CPSW_CPDMA_RX_PENDTHRESH(0), CPSW_TXFRAGS);


 sc->rx.running = 1;
 sc->tx.running = 1;
 sc->watchdog.timer = 0;
 callout_init(&sc->watchdog.callout, 0);
 callout_reset(&sc->watchdog.callout, hz, cpsw_tx_watchdog, sc);
}
