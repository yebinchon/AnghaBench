
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fv_txdesc {int * tx_dmamap; } ;
struct TYPE_4__ {int * fv_parent_tag; int * fv_rx_tag; int * fv_rx_sparemap; struct fv_rxdesc* fv_rxdesc; int * fv_tx_tag; struct fv_txdesc* fv_txdesc; int * fv_rx_ring_tag; int fv_rx_ring_map; int * fv_tx_ring_tag; int fv_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ fv_rx_ring_paddr; int * fv_rx_ring; scalar_t__ fv_tx_ring_paddr; int * fv_tx_ring; } ;
struct fv_softc {TYPE_2__ fv_cdata; TYPE_1__ fv_rdata; } ;
struct fv_rxdesc {int * rx_dmamap; } ;


 int FV_RX_RING_CNT ;
 int FV_TX_RING_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
fv_dma_free(struct fv_softc *sc)
{
 struct fv_txdesc *txd;
 struct fv_rxdesc *rxd;
 int i;


 if (sc->fv_cdata.fv_tx_ring_tag) {
  if (sc->fv_rdata.fv_tx_ring_paddr)
   bus_dmamap_unload(sc->fv_cdata.fv_tx_ring_tag,
       sc->fv_cdata.fv_tx_ring_map);
  if (sc->fv_rdata.fv_tx_ring)
   bus_dmamem_free(sc->fv_cdata.fv_tx_ring_tag,
       sc->fv_rdata.fv_tx_ring,
       sc->fv_cdata.fv_tx_ring_map);
  sc->fv_rdata.fv_tx_ring = ((void*)0);
  sc->fv_rdata.fv_tx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->fv_cdata.fv_tx_ring_tag);
  sc->fv_cdata.fv_tx_ring_tag = ((void*)0);
 }

 if (sc->fv_cdata.fv_rx_ring_tag) {
  if (sc->fv_rdata.fv_rx_ring_paddr)
   bus_dmamap_unload(sc->fv_cdata.fv_rx_ring_tag,
       sc->fv_cdata.fv_rx_ring_map);
  if (sc->fv_rdata.fv_rx_ring)
   bus_dmamem_free(sc->fv_cdata.fv_rx_ring_tag,
       sc->fv_rdata.fv_rx_ring,
       sc->fv_cdata.fv_rx_ring_map);
  sc->fv_rdata.fv_rx_ring = ((void*)0);
  sc->fv_rdata.fv_rx_ring_paddr = 0;
  bus_dma_tag_destroy(sc->fv_cdata.fv_rx_ring_tag);
  sc->fv_cdata.fv_rx_ring_tag = ((void*)0);
 }

 if (sc->fv_cdata.fv_tx_tag) {
  for (i = 0; i < FV_TX_RING_CNT; i++) {
   txd = &sc->fv_cdata.fv_txdesc[i];
   if (txd->tx_dmamap) {
    bus_dmamap_destroy(sc->fv_cdata.fv_tx_tag,
        txd->tx_dmamap);
    txd->tx_dmamap = ((void*)0);
   }
  }
  bus_dma_tag_destroy(sc->fv_cdata.fv_tx_tag);
  sc->fv_cdata.fv_tx_tag = ((void*)0);
 }

 if (sc->fv_cdata.fv_rx_tag) {
  for (i = 0; i < FV_RX_RING_CNT; i++) {
   rxd = &sc->fv_cdata.fv_rxdesc[i];
   if (rxd->rx_dmamap) {
    bus_dmamap_destroy(sc->fv_cdata.fv_rx_tag,
        rxd->rx_dmamap);
    rxd->rx_dmamap = ((void*)0);
   }
  }
  if (sc->fv_cdata.fv_rx_sparemap) {
   bus_dmamap_destroy(sc->fv_cdata.fv_rx_tag,
       sc->fv_cdata.fv_rx_sparemap);
   sc->fv_cdata.fv_rx_sparemap = 0;
  }
  bus_dma_tag_destroy(sc->fv_cdata.fv_rx_tag);
  sc->fv_cdata.fv_rx_tag = ((void*)0);
 }

 if (sc->fv_cdata.fv_parent_tag) {
  bus_dma_tag_destroy(sc->fv_cdata.fv_parent_tag);
  sc->fv_cdata.fv_parent_tag = ((void*)0);
 }
}
