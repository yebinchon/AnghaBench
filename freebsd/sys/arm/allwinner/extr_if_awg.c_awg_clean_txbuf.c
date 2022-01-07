
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_tag; struct awg_bufmap* buf_map; int queued; } ;
struct awg_softc {TYPE_1__ tx; } ;
struct awg_bufmap {int * mbuf; int map; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
awg_clean_txbuf(struct awg_softc *sc, int index)
{
 struct awg_bufmap *bmap;

 --sc->tx.queued;

 bmap = &sc->tx.buf_map[index];
 if (bmap->mbuf != ((void*)0)) {
  bus_dmamap_sync(sc->tx.buf_tag, bmap->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->tx.buf_tag, bmap->map);
  m_freem(bmap->mbuf);
  bmap->mbuf = ((void*)0);
 }
}
