
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct ifnet* rcvif; scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; scalar_t__ m_len; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_6__ {int fv_rx_cons; int fv_rx_ring_map; int fv_rx_ring_tag; int fv_rx_tag; struct fv_rxdesc* fv_rxdesc; } ;
struct TYPE_4__ {struct fv_desc* fv_rx_ring; } ;
struct fv_softc {TYPE_3__ fv_cdata; int fv_dev; TYPE_1__ fv_rdata; struct ifnet* fv_ifp; } ;
struct fv_rxdesc {int saved_ctl; scalar_t__ saved_ca; struct mbuf* rx_m; int rx_dmamap; } ;
struct fv_desc {int fv_stat; scalar_t__ fv_addr; int fv_devcs; } ;


 int ADCTL_ER ;
 int ADSTAT_ES ;
 int ADSTAT_OWN ;
 int ADSTAT_Rx_DE ;
 int ADSTAT_Rx_LENGTH (int) ;
 int ADSTAT_Rx_TL ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ ETHER_CRC_LEN ;
 int FV_INC (int,int) ;
 int FV_LOCK (struct fv_softc*) ;
 int FV_LOCK_ASSERT (struct fv_softc*) ;
 int FV_RX_RING_CNT ;
 int FV_UNLOCK (struct fv_softc*) ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*,...) ;
 int fv_fixup_rx (struct mbuf*) ;
 scalar_t__ fv_newbuf (struct fv_softc*,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
fv_rx(struct fv_softc *sc)
{
 struct fv_rxdesc *rxd;
 struct ifnet *ifp = sc->fv_ifp;
 int cons, prog, packet_len, error;
 struct fv_desc *cur_rx;
 struct mbuf *m;

 FV_LOCK_ASSERT(sc);

 cons = sc->fv_cdata.fv_rx_cons;

 bus_dmamap_sync(sc->fv_cdata.fv_rx_ring_tag,
     sc->fv_cdata.fv_rx_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (prog = 0; prog < FV_RX_RING_CNT; FV_INC(cons, FV_RX_RING_CNT)) {
  cur_rx = &sc->fv_rdata.fv_rx_ring[cons];
  rxd = &sc->fv_cdata.fv_rxdesc[cons];
  m = rxd->rx_m;

  if ((cur_rx->fv_stat & ADSTAT_OWN) == ADSTAT_OWN)
         break;

  prog++;

  if (cur_rx->fv_stat & (ADSTAT_ES | ADSTAT_Rx_TL)) {
   device_printf(sc->fv_dev,
       "Receive Descriptor error %x\n", cur_rx->fv_stat);
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   packet_len = 0;
  } else {
   packet_len = ADSTAT_Rx_LENGTH(cur_rx->fv_stat);
  }


  error = 1;

  if (packet_len < 64)
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  else if ((cur_rx->fv_stat & ADSTAT_Rx_DE) == 0) {
   error = 0;
   bus_dmamap_sync(sc->fv_cdata.fv_rx_tag, rxd->rx_dmamap,
       BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
   m = rxd->rx_m;

   m->m_pkthdr.len = m->m_len = packet_len - ETHER_CRC_LEN;

   fv_fixup_rx(m);
   m->m_pkthdr.rcvif = ifp;
   if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

   FV_UNLOCK(sc);
   (*ifp->if_input)(ifp, m);
   FV_LOCK(sc);
  }

  if (error) {

   cur_rx->fv_stat = rxd->saved_ctl;
   cur_rx->fv_addr = rxd->saved_ca;
   cur_rx->fv_devcs = 0;
  }
  else {

   cur_rx->fv_stat = ADSTAT_OWN;
   cur_rx->fv_devcs = 0;
   if (cons == FV_RX_RING_CNT - 1)
    cur_rx->fv_devcs |= ADCTL_ER;
   cur_rx->fv_addr = 0;
   if (fv_newbuf(sc, cons) != 0) {
    device_printf(sc->fv_dev,
        "Failed to allocate buffer\n");
    break;
   }
  }

  bus_dmamap_sync(sc->fv_cdata.fv_rx_ring_tag,
      sc->fv_cdata.fv_rx_ring_map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 }

 if (prog > 0) {
  sc->fv_cdata.fv_rx_cons = cons;

  bus_dmamap_sync(sc->fv_cdata.fv_rx_ring_tag,
      sc->fv_cdata.fv_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
}
