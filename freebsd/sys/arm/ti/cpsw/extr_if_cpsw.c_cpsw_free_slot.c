
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_softc {int mbuf_dtag; } ;
struct cpsw_slot {int * mbuf; int * dmamap; } ;


 int KASSERT (int,char*) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_unload (int ,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
cpsw_free_slot(struct cpsw_softc *sc, struct cpsw_slot *slot)
{
 int error;

 if (slot->dmamap) {
  if (slot->mbuf)
   bus_dmamap_unload(sc->mbuf_dtag, slot->dmamap);
  error = bus_dmamap_destroy(sc->mbuf_dtag, slot->dmamap);
  KASSERT(error == 0, ("Mapping still active"));
  slot->dmamap = ((void*)0);
 }
 if (slot->mbuf) {
  m_freem(slot->mbuf);
  slot->mbuf = ((void*)0);
 }
}
