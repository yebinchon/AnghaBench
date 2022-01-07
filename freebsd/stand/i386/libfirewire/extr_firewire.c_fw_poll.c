
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {scalar_t__ state; } ;


 scalar_t__ FWOHCI_STATE_ENABLED ;
 int MAX_OHCI ;
 scalar_t__ fw_initialized ;
 struct fwohci_softc* fwinfo ;
 int fwohci_poll (struct fwohci_softc*) ;

void
fw_poll(void)
{
 struct fwohci_softc *sc;
 int i;

 if (fw_initialized == 0)
  return;

 for (i = 0; i < MAX_OHCI; i ++) {
  sc = &fwinfo[i];
  if (sc->state < FWOHCI_STATE_ENABLED)
   break;
  fwohci_poll(sc);
 }
}
