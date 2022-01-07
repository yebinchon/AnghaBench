
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct fv_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_4__ {int fv_tx_cons; int fv_tx_prod; int fv_tx_ring_map; int fv_tx_ring_tag; int fv_tx_tag; struct fv_txdesc* fv_txdesc; int fv_tx_cnt; } ;
struct TYPE_3__ {struct fv_desc* fv_tx_ring; } ;
struct fv_softc {TYPE_2__ fv_cdata; TYPE_1__ fv_rdata; struct ifnet* fv_ifp; } ;
struct fv_desc {int fv_stat; int fv_devcs; scalar_t__ fv_addr; } ;


 int ADSTAT_Tx_ES ;
 int ADSTAT_Tx_UF ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ FV_DMASIZE (int) ;
 int FV_INC (int,int ) ;
 int FV_LOCK_ASSERT (struct fv_softc*) ;
 int FV_TX_RING_CNT ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
fv_tx(struct fv_softc *sc)
{
 struct fv_txdesc *txd;
 struct fv_desc *cur_tx;
 struct ifnet *ifp;
 uint32_t ctl, devcs;
 int cons, prod, prev_cons;

 FV_LOCK_ASSERT(sc);

 cons = sc->fv_cdata.fv_tx_cons;
 prod = sc->fv_cdata.fv_tx_prod;
 if (cons == prod)
  return;

 bus_dmamap_sync(sc->fv_cdata.fv_tx_ring_tag,
     sc->fv_cdata.fv_tx_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 ifp = sc->fv_ifp;




 prev_cons = cons;
 for (; cons != prod; FV_INC(cons, FV_TX_RING_CNT)) {
  cur_tx = &sc->fv_rdata.fv_tx_ring[cons];
  ctl = cur_tx->fv_stat;
  devcs = cur_tx->fv_devcs;

  if (FV_DMASIZE(devcs) == 0)
   break;

  sc->fv_cdata.fv_tx_cnt--;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  txd = &sc->fv_cdata.fv_txdesc[cons];

  if ((ctl & ADSTAT_Tx_ES) == 0)
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  else if (ctl & ADSTAT_Tx_UF) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  }

  bus_dmamap_sync(sc->fv_cdata.fv_tx_tag, txd->tx_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->fv_cdata.fv_tx_tag, txd->tx_dmamap);


  if (txd->tx_m)
   m_freem(txd->tx_m);
  txd->tx_m = ((void*)0);


  cur_tx->fv_stat = 0;
  cur_tx->fv_devcs = 0;
  cur_tx->fv_addr = 0;
 }

 sc->fv_cdata.fv_tx_cons = cons;

 bus_dmamap_sync(sc->fv_cdata.fv_tx_ring_tag,
     sc->fv_cdata.fv_tx_ring_map, BUS_DMASYNC_PREWRITE);
}
