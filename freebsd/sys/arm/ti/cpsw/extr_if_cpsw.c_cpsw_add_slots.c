
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_softc {int avail; int dev; int mbuf_dtag; int _slots; } ;
struct cpsw_slot {int dmamap; } ;
struct cpsw_queue {int queue_slots; int avail_queue_len; int avail; } ;


 int ENOMEM ;
 struct cpsw_slot* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cpsw_slot*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int device_printf (int ,char*) ;
 int next ;
 int nitems (int ) ;

__attribute__((used)) static int
cpsw_add_slots(struct cpsw_softc *sc, struct cpsw_queue *queue, int requested)
{
 const int max_slots = nitems(sc->_slots);
 struct cpsw_slot *slot;
 int i;

 if (requested < 0)
  requested = max_slots;

 for (i = 0; i < requested; ++i) {
  slot = STAILQ_FIRST(&sc->avail);
  if (slot == ((void*)0))
   return (0);
  if (bus_dmamap_create(sc->mbuf_dtag, 0, &slot->dmamap)) {
   device_printf(sc->dev, "failed to create dmamap\n");
   return (ENOMEM);
  }
  STAILQ_REMOVE_HEAD(&sc->avail, next);
  STAILQ_INSERT_TAIL(&queue->avail, slot, next);
  ++queue->avail_queue_len;
  ++queue->queue_slots;
 }
 return (0);
}
