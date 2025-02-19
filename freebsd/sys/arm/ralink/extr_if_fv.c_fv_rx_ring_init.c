
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fv_rx_ring_map; int fv_rx_ring_tag; struct fv_rxdesc* fv_rxdesc; scalar_t__ fv_rx_cons; } ;
struct fv_ring_data {TYPE_2__* fv_rx_ring; } ;
struct fv_softc {TYPE_1__ fv_cdata; struct fv_ring_data fv_rdata; } ;
struct fv_rxdesc {TYPE_2__* desc; int * rx_m; } ;
struct TYPE_4__ {scalar_t__ fv_addr; int fv_devcs; int fv_stat; } ;


 int ADCTL_ER ;
 int ADSTAT_OWN ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int FV_RX_RING_CNT ;
 int FV_RX_RING_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (TYPE_2__*,int ) ;
 scalar_t__ fv_newbuf (struct fv_softc*,int) ;

__attribute__((used)) static int
fv_rx_ring_init(struct fv_softc *sc)
{
 struct fv_ring_data *rd;
 struct fv_rxdesc *rxd;
 int i;

 sc->fv_cdata.fv_rx_cons = 0;

 rd = &sc->fv_rdata;
 bzero(rd->fv_rx_ring, FV_RX_RING_SIZE);
 for (i = 0; i < FV_RX_RING_CNT; i++) {
  rxd = &sc->fv_cdata.fv_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->desc = &rd->fv_rx_ring[i];
  rd->fv_rx_ring[i].fv_stat = ADSTAT_OWN;
  rd->fv_rx_ring[i].fv_devcs = 0;
  if (i == FV_RX_RING_CNT - 1)
   rd->fv_rx_ring[i].fv_devcs |= ADCTL_ER;
  rd->fv_rx_ring[i].fv_addr = 0;
  if (fv_newbuf(sc, i) != 0)
   return (ENOBUFS);
 }

 bus_dmamap_sync(sc->fv_cdata.fv_rx_ring_tag,
     sc->fv_cdata.fv_rx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 return (0);
}
