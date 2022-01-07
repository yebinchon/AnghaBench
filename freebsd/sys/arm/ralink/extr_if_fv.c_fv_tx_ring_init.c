
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fv_txdesc {int * tx_m; } ;
struct TYPE_3__ {int fv_tx_ring_map; int fv_tx_ring_tag; struct fv_txdesc* fv_txdesc; scalar_t__ fv_tx_pkts; scalar_t__ fv_tx_cnt; scalar_t__ fv_tx_cons; scalar_t__ fv_tx_prod; } ;
struct fv_ring_data {TYPE_2__* fv_tx_ring; } ;
struct fv_softc {TYPE_1__ fv_cdata; struct fv_ring_data fv_rdata; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {int fv_link; scalar_t__ fv_addr; scalar_t__ fv_devcs; scalar_t__ fv_stat; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int FV_TX_RING_ADDR (struct fv_softc*,int) ;
 int FV_TX_RING_CNT ;
 int FV_TX_RING_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int ) ;

__attribute__((used)) static int
fv_tx_ring_init(struct fv_softc *sc)
{
 struct fv_ring_data *rd;
 struct fv_txdesc *txd;
 bus_addr_t addr;
 int i;

 sc->fv_cdata.fv_tx_prod = 0;
 sc->fv_cdata.fv_tx_cons = 0;
 sc->fv_cdata.fv_tx_cnt = 0;
 sc->fv_cdata.fv_tx_pkts = 0;

 rd = &sc->fv_rdata;
 bzero(rd->fv_tx_ring, FV_TX_RING_SIZE);
 for (i = 0; i < FV_TX_RING_CNT; i++) {
  if (i == FV_TX_RING_CNT - 1)
   addr = FV_TX_RING_ADDR(sc, 0);
  else
   addr = FV_TX_RING_ADDR(sc, i + 1);
  rd->fv_tx_ring[i].fv_stat = 0;
  rd->fv_tx_ring[i].fv_devcs = 0;
  rd->fv_tx_ring[i].fv_addr = 0;
  rd->fv_tx_ring[i].fv_link = addr;
  txd = &sc->fv_cdata.fv_txdesc[i];
  txd->tx_m = ((void*)0);
 }

 bus_dmamap_sync(sc->fv_cdata.fv_tx_ring_tag,
     sc->fv_cdata.fv_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
