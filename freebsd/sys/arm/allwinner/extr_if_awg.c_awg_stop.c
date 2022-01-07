
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int cur; int desc_map; int desc_tag; TYPE_3__* desc_ring; } ;
struct TYPE_6__ {int next; scalar_t__ queued; int cur; int desc_map; int desc_tag; TYPE_1__* desc_ring; } ;
struct awg_softc {TYPE_4__ rx; TYPE_2__ tx; scalar_t__ link; int stat_ch; int ifp; } ;
typedef int if_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_5__ {scalar_t__ status; } ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EMAC_RX_CTL_0 ;
 int EMAC_RX_CTL_1 ;
 int EMAC_TX_CTL_0 ;
 int EMAC_TX_CTL_1 ;
 int FLUSH_TX_FIFO ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RD4 (struct awg_softc*,int ) ;
 int RX_DESC_CTL ;
 int RX_DMA_EN ;
 int RX_EN ;
 int RX_NEXT (int) ;
 int TX_DESC_CTL ;
 int TX_DMA_EN ;
 int TX_EN ;
 int TX_NEXT (int) ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_clean_txbuf (struct awg_softc*,int) ;
 int awg_disable_intr (struct awg_softc*) ;
 int awg_reuse_rxdesc (struct awg_softc*,int) ;
 int awg_txeof (struct awg_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int callout_stop (int *) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int le32toh (scalar_t__) ;

__attribute__((used)) static void
awg_stop(struct awg_softc *sc)
{
 if_t ifp;
 uint32_t val;
 int i;

 AWG_ASSERT_LOCKED(sc);

 ifp = sc->ifp;

 callout_stop(&sc->stat_ch);


 val = RD4(sc, EMAC_TX_CTL_1);
 val &= ~TX_DMA_EN;
 val |= FLUSH_TX_FIFO;
 WR4(sc, EMAC_TX_CTL_1, val);


 val = RD4(sc, EMAC_TX_CTL_0);
 WR4(sc, EMAC_TX_CTL_0, val & ~TX_EN);


 val = RD4(sc, EMAC_RX_CTL_0);
 WR4(sc, EMAC_RX_CTL_0, val & ~RX_EN);


 awg_disable_intr(sc);


 val = RD4(sc, EMAC_TX_CTL_1);
 WR4(sc, EMAC_TX_CTL_1, val & ~TX_DMA_EN);


 val = RD4(sc, EMAC_RX_CTL_1);
 WR4(sc, EMAC_RX_CTL_1, val & ~RX_DMA_EN);

 sc->link = 0;


 awg_txeof(sc);


 for (i = sc->tx.next; sc->tx.queued > 0; i = TX_NEXT(i)) {
  val = le32toh(sc->tx.desc_ring[i].status);
  if ((val & TX_DESC_CTL) != 0)
   break;
  awg_clean_txbuf(sc, i);
 }
 sc->tx.next = i;
 for (; sc->tx.queued > 0; i = TX_NEXT(i)) {
  sc->tx.desc_ring[i].status = 0;
  awg_clean_txbuf(sc, i);
 }
 sc->tx.cur = sc->tx.next;
 bus_dmamap_sync(sc->tx.desc_tag, sc->tx.desc_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


 bus_dmamap_sync(sc->rx.desc_tag, sc->rx.desc_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (i = sc->rx.cur; ; i = RX_NEXT(i)) {
  val = le32toh(sc->rx.desc_ring[i].status);
  if ((val & RX_DESC_CTL) != 0)
   break;
  awg_reuse_rxdesc(sc, i);
 }
 sc->rx.cur = i;
 bus_dmamap_sync(sc->rx.desc_tag, sc->rx.desc_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
