
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int desc_map; int desc_tag; } ;
struct awg_softc {TYPE_1__ tx; int ifp; int link; } ;
typedef int if_t ;


 int AWG_ASSERT_LOCKED (struct awg_softc*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EMAC_TX_CTL_1 ;
 int ENOBUFS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RD4 (struct awg_softc*,int ) ;
 int TX_DMA_START ;
 int WR4 (struct awg_softc*,int ,int) ;
 int awg_encap (struct awg_softc*,struct mbuf**) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_bpfmtap (int ,struct mbuf*) ;
 struct mbuf* if_dequeue (int ) ;
 int if_getdrvflags (int ) ;
 int if_sendq_prepend (int ,struct mbuf*) ;
 int if_setdrvflagbits (int ,int,int ) ;

__attribute__((used)) static void
awg_start_locked(struct awg_softc *sc)
{
 struct mbuf *m;
 uint32_t val;
 if_t ifp;
 int cnt, err;

 AWG_ASSERT_LOCKED(sc);

 if (!sc->link)
  return;

 ifp = sc->ifp;

 if ((if_getdrvflags(ifp) & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 for (cnt = 0; ; cnt++) {
  m = if_dequeue(ifp);
  if (m == ((void*)0))
   break;

  err = awg_encap(sc, &m);
  if (err != 0) {
   if (err == ENOBUFS)
    if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
   if (m != ((void*)0))
    if_sendq_prepend(ifp, m);
   break;
  }
  if_bpfmtap(ifp, m);
 }

 if (cnt != 0) {
  bus_dmamap_sync(sc->tx.desc_tag, sc->tx.desc_map,
      BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);


  val = RD4(sc, EMAC_TX_CTL_1);
  WR4(sc, EMAC_TX_CTL_1, val | TX_DMA_START);
 }
}
