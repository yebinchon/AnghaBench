
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_softc {int avail; struct cpsw_slot* _slots; } ;
struct cpsw_slot {int bd_offset; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cpsw_slot*,int ) ;
 int cpsw_cpdma_bd_offset (int) ;
 int next ;
 int nitems (struct cpsw_slot*) ;

__attribute__((used)) static void
cpsw_init_slots(struct cpsw_softc *sc)
{
 struct cpsw_slot *slot;
 int i;

 STAILQ_INIT(&sc->avail);


 for (i = 0; i < nitems(sc->_slots); i++) {
  slot = &sc->_slots[i];
  slot->bd_offset = cpsw_cpdma_bd_offset(i);
  STAILQ_INSERT_TAIL(&sc->avail, slot, next);
 }
}
