
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {scalar_t__ state; } ;


 scalar_t__ FWOHCI_STATE_DEAD ;
 int MAX_OHCI ;
 int fw_initialized ;
 int fw_probe (int,struct fwohci_softc*) ;
 struct fwohci_softc* fwinfo ;

__attribute__((used)) static int
fw_init(void)
{
 int i, avail;
 struct fwohci_softc *sc;

 if (fw_initialized)
  return (0);

 avail = 0;
 for (i = 0; i < MAX_OHCI; i ++) {
  sc = &fwinfo[i];
  fw_probe(i, sc);
  if (sc->state == FWOHCI_STATE_DEAD)
   break;
  avail ++;
  break;
 }
 fw_initialized = 1;

 return (0);
}
