
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fwohci_softc {int dummy; } ;


 int fwochi_check_stat (struct fwohci_softc*) ;
 int fwohci_intr_body (struct fwohci_softc*,int,int) ;

void
fwohci_poll(struct fwohci_softc *sc)
{
 uint32_t stat;

 stat = fwochi_check_stat(sc);
 if (stat != 0xffffffff)
  fwohci_intr_body(sc, stat, 1);
}
