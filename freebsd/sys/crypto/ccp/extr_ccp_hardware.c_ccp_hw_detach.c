
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int queues; } ;
typedef int device_t ;


 int ccp_hw_detach_queue (int ,unsigned int) ;
 int ccp_release_interrupts (struct ccp_softc*) ;
 int ccp_unmap_pci_bar (int ) ;
 struct ccp_softc* device_get_softc (int ) ;
 unsigned int nitems (int ) ;
 int pci_disable_busmaster (int ) ;

void
ccp_hw_detach(device_t dev)
{
 struct ccp_softc *sc;
 unsigned i;

 sc = device_get_softc(dev);

 for (i = 0; i < nitems(sc->queues); i++)
  ccp_hw_detach_queue(dev, i);

 ccp_release_interrupts(sc);
 pci_disable_busmaster(dev);
 ccp_unmap_pci_bar(dev);
}
