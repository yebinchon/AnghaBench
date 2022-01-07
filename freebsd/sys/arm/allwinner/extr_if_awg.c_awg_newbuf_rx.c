
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ext_size; } ;
struct TYPE_7__ {int len; } ;
struct mbuf {TYPE_2__ m_ext; int m_len; TYPE_1__ m_pkthdr; } ;
struct TYPE_10__ {TYPE_3__* buf_map; int buf_tag; int buf_spare_map; } ;
struct awg_softc {TYPE_4__ rx; } ;
typedef int bus_dmamap_t ;
struct TYPE_11__ {int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {struct mbuf* mbuf; int map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int ETHER_ALIGN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int awg_setup_rxdesc (struct awg_softc*,int,int ) ;
 scalar_t__ bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_5__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;

__attribute__((used)) static int
awg_newbuf_rx(struct awg_softc *sc, int index)
{
 struct mbuf *m;
 bus_dma_segment_t seg;
 bus_dmamap_t map;
 int nsegs;

 m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
 if (m == ((void*)0))
  return (ENOBUFS);

 m->m_pkthdr.len = m->m_len = m->m_ext.ext_size;
 m_adj(m, ETHER_ALIGN);

 if (bus_dmamap_load_mbuf_sg(sc->rx.buf_tag, sc->rx.buf_spare_map,
     m, &seg, &nsegs, BUS_DMA_NOWAIT) != 0) {
  m_freem(m);
  return (ENOBUFS);
 }

 if (sc->rx.buf_map[index].mbuf != ((void*)0)) {
  bus_dmamap_sync(sc->rx.buf_tag, sc->rx.buf_map[index].map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->rx.buf_tag, sc->rx.buf_map[index].map);
 }
 map = sc->rx.buf_map[index].map;
 sc->rx.buf_map[index].map = sc->rx.buf_spare_map;
 sc->rx.buf_spare_map = map;
 bus_dmamap_sync(sc->rx.buf_tag, sc->rx.buf_map[index].map,
     BUS_DMASYNC_PREREAD);

 sc->rx.buf_map[index].mbuf = m;
 awg_setup_rxdesc(sc, index, seg.ds_addr);

 return (0);
}
