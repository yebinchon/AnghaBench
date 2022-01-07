
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {unsigned int intr_count; int dev; int ** intr_res; int ** intr_tag; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
ccp_release_interrupts(struct ccp_softc *sc)
{
 unsigned i;

 for (i = 0; i < sc->intr_count; i++) {
  if (sc->intr_tag[i] != ((void*)0))
   bus_teardown_intr(sc->dev, sc->intr_res[i],
       sc->intr_tag[i]);
  if (sc->intr_res[i] != ((void*)0))
   bus_release_resource(sc->dev, SYS_RES_IRQ,
       rman_get_rid(sc->intr_res[i]), sc->intr_res[i]);
 }

 pci_release_msi(sc->dev);
}
