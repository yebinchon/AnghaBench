
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int dev; } ;
struct fwohci_softc {TYPE_1__ fc; } ;


 int FWOHCI_INTSTAT ;
 int FWOHCI_INTSTATCLR ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static uint32_t
fwochi_check_stat(struct fwohci_softc *sc)
{
 uint32_t stat;

 stat = OREAD(sc, FWOHCI_INTSTAT);
 if (stat == 0xffffffff) {
  device_printf(sc->fc.dev,
   "device physically ejected?\n");
  return(stat);
 }
 if (stat)
  OWRITE(sc, FWOHCI_INTSTATCLR, stat);
 return(stat);
}
