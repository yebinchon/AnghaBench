
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_nextpkt; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct cpsw_softc {int dummy; } ;


 int CPSW_CPDMA_CPDMA_EOI_VECTOR ;
 int CPSW_RX_LOCK (struct cpsw_softc*) ;
 int CPSW_RX_UNLOCK (struct cpsw_softc*) ;
 int IFCOUNTER_IPACKETS ;
 struct mbuf* cpsw_rx_dequeue (struct cpsw_softc*) ;
 int cpsw_rx_enqueue (struct cpsw_softc*) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
cpsw_intr_rx_thresh(void *arg)
{
 struct cpsw_softc *sc;
 struct ifnet *ifp;
 struct mbuf *received, *next;

 sc = (struct cpsw_softc *)arg;
 CPSW_RX_LOCK(sc);
 received = cpsw_rx_dequeue(sc);
 cpsw_rx_enqueue(sc);
 cpsw_write_4(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 0);
 CPSW_RX_UNLOCK(sc);

 while (received != ((void*)0)) {
  next = received->m_nextpkt;
  received->m_nextpkt = ((void*)0);
  ifp = received->m_pkthdr.rcvif;
  (*ifp->if_input)(ifp, received);
  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  received = next;
 }
}
