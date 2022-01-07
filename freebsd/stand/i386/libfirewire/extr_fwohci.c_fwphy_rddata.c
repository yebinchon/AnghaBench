
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int dev; } ;
struct fwohci_softc {TYPE_1__ fc; } ;


 int DELAY (int) ;
 int FWOHCI_INTSTAT ;
 int FWOHCI_INTSTATCLR ;
 int MAX_RETRY ;
 int OHCI_INT_REG_FAIL ;
 int OHCI_PHYACCESS ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int PHYDEV_RDCMD ;
 int PHYDEV_RDDATA ;
 int PHYDEV_RDDONE ;
 int PHYDEV_REGADDR ;
 int device_printf (int ,char*,...) ;
 scalar_t__ firewire_debug ;

__attribute__((used)) static uint32_t
fwphy_rddata(struct fwohci_softc *sc, u_int addr)
{
 uint32_t fun, stat;
 u_int i, retry = 0;

 addr &= 0xf;

again:
 OWRITE(sc, FWOHCI_INTSTATCLR, OHCI_INT_REG_FAIL);
 fun = PHYDEV_RDCMD | (addr << PHYDEV_REGADDR);
 OWRITE(sc, OHCI_PHYACCESS, fun);
 for ( i = 0 ; i < 100 ; i ++ ){
  fun = OREAD(sc, OHCI_PHYACCESS);
  if ((fun & PHYDEV_RDCMD) == 0 && (fun & PHYDEV_RDDONE) != 0)
   break;
  DELAY(100);
 }
 if(i >= 100) {
  if (firewire_debug)
   device_printf(sc->fc.dev, "phy read failed(1).\n");
  if (++retry < 100) {
   DELAY(100);
   goto again;
  }
 }

 stat = OREAD(sc, FWOHCI_INTSTAT);
 if ((stat & OHCI_INT_REG_FAIL) != 0 ||
   ((fun >> PHYDEV_REGADDR) & 0xf) != addr) {
  if (firewire_debug)
   device_printf(sc->fc.dev, "phy read failed(2).\n");
  if (++retry < 100) {
   DELAY(100);
   goto again;
  }
 }
 if (firewire_debug || retry >= 100)
  device_printf(sc->fc.dev,
      "fwphy_rddata: 0x%x loop=%d, retry=%d\n", addr, i, retry);

 return((fun >> PHYDEV_RDDATA )& 0xff);
}
