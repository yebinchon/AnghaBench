
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_7__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_10__ {int cur; scalar_t__ queued; scalar_t__ segs; TYPE_3__* desc_ring; TYPE_2__* buf_map; int buf_tag; } ;
struct awg_softc {TYPE_4__ tx; int dev; } ;
typedef int bus_dmamap_t ;
struct TYPE_11__ {int ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {void* status; void* size; void* addr; } ;
struct TYPE_8__ {struct mbuf* mbuf; int map; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int EFBIG ;
 int EIO ;
 int ENOBUFS ;
 int ENOMEM ;
 int M_NOWAIT ;
 int TX_CHECKSUM_CTL_FULL ;
 int TX_CHECKSUM_CTL_IP ;
 int TX_CHECKSUM_CTL_SHIFT ;
 scalar_t__ TX_DESC_COUNT ;
 int TX_DESC_CTL ;
 int TX_FIR_DESC ;
 int TX_INT_CTL ;
 int TX_LAST_DESC ;
 int TX_MAX_SEGS ;
 int TX_NEXT (int) ;
 int TX_SKIP (int,scalar_t__) ;
 scalar_t__ awg_tx_interval ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_5__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*) ;
 void* htole32 (int) ;
 struct mbuf* m_collapse (struct mbuf*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
awg_encap(struct awg_softc *sc, struct mbuf **mp)
{
 bus_dmamap_t map;
 bus_dma_segment_t segs[TX_MAX_SEGS];
 int error, nsegs, cur, first, last, i;
 u_int csum_flags;
 uint32_t flags, status;
 struct mbuf *m;

 cur = first = sc->tx.cur;
 map = sc->tx.buf_map[first].map;

 m = *mp;
 error = bus_dmamap_load_mbuf_sg(sc->tx.buf_tag, map, m, segs,
     &nsegs, BUS_DMA_NOWAIT);
 if (error == EFBIG) {
  m = m_collapse(m, M_NOWAIT, TX_MAX_SEGS);
  if (m == ((void*)0)) {
   device_printf(sc->dev, "awg_encap: m_collapse failed\n");
   m_freem(*mp);
   *mp = ((void*)0);
   return (ENOMEM);
  }
  *mp = m;
  error = bus_dmamap_load_mbuf_sg(sc->tx.buf_tag, map, m,
      segs, &nsegs, BUS_DMA_NOWAIT);
  if (error != 0) {
   m_freem(*mp);
   *mp = ((void*)0);
  }
 }
 if (error != 0) {
  device_printf(sc->dev, "awg_encap: bus_dmamap_load_mbuf_sg failed\n");
  return (error);
 }
 if (nsegs == 0) {
  m_freem(*mp);
  *mp = ((void*)0);
  return (EIO);
 }

 if (sc->tx.queued + nsegs > TX_DESC_COUNT) {
  bus_dmamap_unload(sc->tx.buf_tag, map);
  return (ENOBUFS);
 }

 bus_dmamap_sync(sc->tx.buf_tag, map, BUS_DMASYNC_PREWRITE);

 flags = TX_FIR_DESC;
 status = 0;
 if ((m->m_pkthdr.csum_flags & CSUM_IP) != 0) {
  if ((m->m_pkthdr.csum_flags & (CSUM_TCP|CSUM_UDP)) != 0)
   csum_flags = TX_CHECKSUM_CTL_FULL;
  else
   csum_flags = TX_CHECKSUM_CTL_IP;
  flags |= (csum_flags << TX_CHECKSUM_CTL_SHIFT);
 }

 for (i = 0; i < nsegs; i++) {
  sc->tx.segs++;
  if (i == nsegs - 1) {
   flags |= TX_LAST_DESC;




   if (sc->tx.segs >= awg_tx_interval) {
    sc->tx.segs = 0;
    flags |= TX_INT_CTL;
   }
  }

  sc->tx.desc_ring[cur].addr = htole32((uint32_t)segs[i].ds_addr);
  sc->tx.desc_ring[cur].size = htole32(flags | segs[i].ds_len);
  sc->tx.desc_ring[cur].status = htole32(status);

  flags &= ~TX_FIR_DESC;




  status = TX_DESC_CTL;

  ++sc->tx.queued;
  cur = TX_NEXT(cur);
 }

 sc->tx.cur = cur;


 last = TX_SKIP(cur, TX_DESC_COUNT - 1);
 sc->tx.buf_map[first].map = sc->tx.buf_map[last].map;
 sc->tx.buf_map[last].map = map;
 sc->tx.buf_map[last].mbuf = m;





 sc->tx.desc_ring[first].status = htole32(TX_DESC_CTL);

 return (0);
}
