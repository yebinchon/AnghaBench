
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {scalar_t__ state; } ;


 int CMD_OK ;
 scalar_t__ FWOHCI_STATE_ENABLED ;
 scalar_t__ FWOHCI_STATE_NORMAL ;
 int fw_crom (struct fwohci_softc*) ;
 int fwohci_ibr (struct fwohci_softc*) ;
 int fwohci_poll (struct fwohci_softc*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
fw_busreset(struct fwohci_softc *sc)
{
 int count;

 if (sc->state < FWOHCI_STATE_ENABLED) {
  printf("fwohci not enabled\n");
  return(CMD_OK);
 }
 fw_crom(sc);
 fwohci_ibr(sc);
 count = 0;
 while (sc->state< FWOHCI_STATE_NORMAL) {
  fwohci_poll(sc);
  count ++;
  if (count > 1000) {
   printf("give up to wait bus initialize\n");
   return (-1);
  }
 }
 printf("poll count = %d\n", count);
 return (0);
}
