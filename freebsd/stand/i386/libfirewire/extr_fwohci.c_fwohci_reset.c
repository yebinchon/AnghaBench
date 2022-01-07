
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bus_addr; } ;
struct fwohci_softc {int maxrec; int speed; int* config_rom; TYPE_1__ sid_dma; } ;
typedef int device_t ;


 int DELAY (int) ;
 int FWOHCI_INTMASKCLR ;
 int MAXREC (int) ;
 int OHCI_BUSFNC ;
 int OHCI_BUS_OPT ;
 int OHCI_CNTL_SID ;
 int OHCI_CROMHDR ;
 int OHCI_CROMPTR ;
 int OHCI_HCCCTL ;
 int OHCI_HCCCTLCLR ;
 int OHCI_HCC_BIGEND ;
 int OHCI_HCC_LINKEN ;
 int OHCI_HCC_POSTWR ;
 int OHCI_HCC_RESET ;
 int OHCI_LNKCTL ;
 int OHCI_SID_BUF ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int VTOP (int*) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ firewire_debug ;
 int fwohci_probe_phy (struct fwohci_softc*,int ) ;
 int* linkspeed ;
 int printf (char*,int) ;

void
fwohci_reset(struct fwohci_softc *sc, device_t dev)
{
 int i, max_rec, speed;
 uint32_t reg, reg2;


 OWRITE(sc, FWOHCI_INTMASKCLR, ~0);


 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_RESET);
 if (firewire_debug)
  device_printf(dev, "resetting OHCI...");
 i = 0;
 while(OREAD(sc, OHCI_HCCCTL) & OHCI_HCC_RESET) {
  if (i++ > 100) break;
  DELAY(1000);
 }
 if (firewire_debug)
  printf("done (loop=%d)\n", i);


 fwohci_probe_phy(sc, dev);


 reg = OREAD(sc, OHCI_BUS_OPT);
 reg2 = reg | OHCI_BUSFNC;
 max_rec = (reg & 0x0000f000) >> 12;
 speed = (reg & 0x00000007);
 device_printf(dev, "Link %s, max_rec %d bytes.\n",
   linkspeed[speed], MAXREC(max_rec));

 sc->maxrec = sc->speed + 8;
 if (max_rec != sc->maxrec) {
  reg2 = (reg2 & 0xffff0fff) | (sc->maxrec << 12);
  device_printf(dev, "max_rec %d -> %d\n",
    MAXREC(max_rec), MAXREC(sc->maxrec));
 }
 if (firewire_debug)
  device_printf(dev, "BUS_OPT 0x%x -> 0x%x\n", reg, reg2);
 OWRITE(sc, OHCI_BUS_OPT, reg2);


 OWRITE(sc, OHCI_CROMHDR, sc->config_rom[0]);
 OWRITE(sc, OHCI_CROMPTR, VTOP(sc->config_rom));



 OWRITE(sc, OHCI_HCCCTLCLR, OHCI_HCC_BIGEND);
 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_POSTWR);





 OWRITE(sc, OHCI_HCCCTL, OHCI_HCC_LINKEN);
}
