
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int teardown; scalar_t__ avail_queue_len; scalar_t__ max_avail_queue_len; scalar_t__ running; int active; int active_queue_len; int queue_removes; int queue_restart; int avail; } ;
struct cpsw_softc {TYPE_1__ tx; int mbuf_dtag; } ;
struct cpsw_slot {int * mbuf; scalar_t__ ifp; int dmamap; } ;
struct cpsw_cpdma_bd {scalar_t__ next; scalar_t__ flags; } ;


 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CPDMA_BD_EOP ;
 scalar_t__ CPDMA_BD_EOQ ;
 scalar_t__ CPDMA_BD_OWNER ;
 scalar_t__ CPDMA_BD_SOP ;
 scalar_t__ CPDMA_BD_TDOWNCMPLT ;
 int CPSW_DEBUGF (struct cpsw_softc*,char*) ;
 int IFCOUNTER_OPACKETS ;
 int IFCOUNTER_OQDROPS ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct cpsw_slot* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cpsw_slot*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int cpsw_cpdma_read_bd (struct cpsw_softc*,struct cpsw_slot*,struct cpsw_cpdma_bd*) ;
 scalar_t__ cpsw_cpdma_read_bd_flags (struct cpsw_softc*,struct cpsw_slot*) ;
 int cpsw_write_cp_slot (struct cpsw_softc*,TYPE_1__*,struct cpsw_slot*) ;
 int cpsw_write_hdp_slot (struct cpsw_softc*,TYPE_1__*,struct cpsw_slot*) ;
 int if_inc_counter (scalar_t__,int ,int) ;
 int m_freem (int *) ;
 int next ;

__attribute__((used)) static int
cpsw_tx_dequeue(struct cpsw_softc *sc)
{
 struct cpsw_slot *slot, *last_removed_slot = ((void*)0);
 struct cpsw_cpdma_bd bd;
 uint32_t flags, removed = 0;


 slot = STAILQ_FIRST(&sc->tx.active);
 while (slot != ((void*)0)) {
  flags = cpsw_cpdma_read_bd_flags(sc, slot);


  if ((flags & (CPDMA_BD_SOP | CPDMA_BD_TDOWNCMPLT)) ==
      (CPDMA_BD_SOP | CPDMA_BD_TDOWNCMPLT)) {
   sc->tx.teardown = 1;
  }

  if ((flags & (CPDMA_BD_SOP | CPDMA_BD_OWNER)) ==
      (CPDMA_BD_SOP | CPDMA_BD_OWNER) && sc->tx.teardown == 0)
   break;

  bus_dmamap_sync(sc->mbuf_dtag, slot->dmamap, BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->mbuf_dtag, slot->dmamap);
  m_freem(slot->mbuf);
  slot->mbuf = ((void*)0);

  if (slot->ifp) {
   if (sc->tx.teardown == 0)
    if_inc_counter(slot->ifp, IFCOUNTER_OPACKETS, 1);
   else
    if_inc_counter(slot->ifp, IFCOUNTER_OQDROPS, 1);
  }


  while (slot != ((void*)0) && slot->mbuf == ((void*)0)) {
   STAILQ_REMOVE_HEAD(&sc->tx.active, next);
   STAILQ_INSERT_TAIL(&sc->tx.avail, slot, next);
   ++removed;
   last_removed_slot = slot;
   slot = STAILQ_FIRST(&sc->tx.active);
  }

  cpsw_write_cp_slot(sc, &sc->tx, last_removed_slot);


  cpsw_cpdma_read_bd(sc, last_removed_slot, &bd);
  if (slot != ((void*)0) && bd.next != 0 && (bd.flags &
      (CPDMA_BD_EOP | CPDMA_BD_OWNER | CPDMA_BD_EOQ)) ==
      (CPDMA_BD_EOP | CPDMA_BD_EOQ)) {
   cpsw_write_hdp_slot(sc, &sc->tx, slot);
   sc->tx.queue_restart++;
   break;
  }
 }

 if (removed != 0) {
  sc->tx.queue_removes += removed;
  sc->tx.active_queue_len -= removed;
  sc->tx.avail_queue_len += removed;
  if (sc->tx.avail_queue_len > sc->tx.max_avail_queue_len)
   sc->tx.max_avail_queue_len = sc->tx.avail_queue_len;
  CPSW_DEBUGF(sc, ("TX removed %d completed packet(s)", removed));
 }

 if (sc->tx.teardown && STAILQ_EMPTY(&sc->tx.active)) {
  CPSW_DEBUGF(sc, ("TX teardown is complete"));
  sc->tx.teardown = 0;
  sc->tx.running = 0;
 }

 return (removed);
}
