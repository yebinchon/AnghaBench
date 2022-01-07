
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct fv_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int fv_rx_tag; struct fv_rxdesc* fv_rxdesc; int * fv_rx_sparemap; int fv_tx_tag; struct fv_txdesc* fv_txdesc; int fv_sf_buff; int fv_sf_buff_map; int fv_sf_tag; int fv_rx_ring_map; int fv_rx_ring_tag; int fv_tx_ring_map; int fv_tx_ring_tag; int fv_parent_tag; } ;
struct TYPE_3__ {scalar_t__ fv_tx_ring_paddr; scalar_t__ fv_rx_ring_paddr; scalar_t__ fv_sf_paddr; int fv_rx_ring; int fv_tx_ring; } ;
struct fv_softc {int fv_dev; TYPE_2__ fv_cdata; TYPE_1__ fv_rdata; } ;
struct fv_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct fv_dmamap_arg {scalar_t__ fv_busaddr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int FV_MAXFRAGS ;
 int FV_MIN_FRAMELEN ;
 int FV_RING_ALIGN ;
 int FV_RX_ALIGN ;
 int FV_RX_RING_CNT ;
 int FV_RX_RING_SIZE ;
 int FV_SFRAME_LEN ;
 int FV_TX_RING_CNT ;
 int FV_TX_RING_SIZE ;
 int MCLBYTES ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct fv_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int fv_dmamap_cb ;

__attribute__((used)) static int
fv_dma_alloc(struct fv_softc *sc)
{
 struct fv_dmamap_arg ctx;
 struct fv_txdesc *txd;
 struct fv_rxdesc *rxd;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->fv_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_parent_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->fv_cdata.fv_parent_tag,
     FV_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     FV_TX_RING_SIZE,
     1,
     FV_TX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->fv_cdata.fv_parent_tag,
     FV_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     FV_RX_RING_SIZE,
     1,
     FV_RX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->fv_cdata.fv_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * FV_MAXFRAGS,
     FV_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_tx_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->fv_cdata.fv_parent_tag,
     FV_RX_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_rx_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->fv_cdata.fv_parent_tag,
     sizeof(uint32_t), 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     FV_SFRAME_LEN + FV_MIN_FRAMELEN,
     1,
     FV_SFRAME_LEN + FV_MIN_FRAMELEN,
     0,
     ((void*)0), ((void*)0),
     &sc->fv_cdata.fv_sf_tag);
 if (error != 0) {
  device_printf(sc->fv_dev, "failed to create setup frame DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->fv_cdata.fv_tx_ring_tag,
     (void **)&sc->fv_rdata.fv_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->fv_cdata.fv_tx_ring_map);
 if (error != 0) {
  device_printf(sc->fv_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.fv_busaddr = 0;
 error = bus_dmamap_load(sc->fv_cdata.fv_tx_ring_tag,
     sc->fv_cdata.fv_tx_ring_map, sc->fv_rdata.fv_tx_ring,
     FV_TX_RING_SIZE, fv_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.fv_busaddr == 0) {
  device_printf(sc->fv_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->fv_rdata.fv_tx_ring_paddr = ctx.fv_busaddr;


 error = bus_dmamem_alloc(sc->fv_cdata.fv_rx_ring_tag,
     (void **)&sc->fv_rdata.fv_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->fv_cdata.fv_rx_ring_map);
 if (error != 0) {
  device_printf(sc->fv_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.fv_busaddr = 0;
 error = bus_dmamap_load(sc->fv_cdata.fv_rx_ring_tag,
     sc->fv_cdata.fv_rx_ring_map, sc->fv_rdata.fv_rx_ring,
     FV_RX_RING_SIZE, fv_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.fv_busaddr == 0) {
  device_printf(sc->fv_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->fv_rdata.fv_rx_ring_paddr = ctx.fv_busaddr;


 error = bus_dmamem_alloc(sc->fv_cdata.fv_sf_tag,
     (void **)&sc->fv_cdata.fv_sf_buff, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->fv_cdata.fv_sf_buff_map);
 if (error != 0) {
  device_printf(sc->fv_dev,
      "failed to allocate DMA'able memory for setup frame\n");
  goto fail;
 }

 ctx.fv_busaddr = 0;
 error = bus_dmamap_load(sc->fv_cdata.fv_sf_tag,
     sc->fv_cdata.fv_sf_buff_map, sc->fv_cdata.fv_sf_buff,
     FV_SFRAME_LEN, fv_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.fv_busaddr == 0) {
  device_printf(sc->fv_dev,
      "failed to load DMA'able memory for setup frame\n");
  goto fail;
 }
 sc->fv_rdata.fv_sf_paddr = ctx.fv_busaddr;


 for (i = 0; i < FV_TX_RING_CNT; i++) {
  txd = &sc->fv_cdata.fv_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->fv_cdata.fv_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->fv_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->fv_cdata.fv_rx_tag, 0,
     &sc->fv_cdata.fv_rx_sparemap)) != 0) {
  device_printf(sc->fv_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < FV_RX_RING_CNT; i++) {
  rxd = &sc->fv_cdata.fv_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->fv_cdata.fv_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->fv_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}
