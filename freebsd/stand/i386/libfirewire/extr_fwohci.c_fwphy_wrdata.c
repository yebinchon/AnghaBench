
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fwohci_softc {int dummy; } ;


 int DELAY (int) ;
 int OHCI_PHYACCESS ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int PHYDEV_REGADDR ;
 int PHYDEV_WRCMD ;
 int PHYDEV_WRDATA ;
 int fwphy_rddata (struct fwohci_softc*,int) ;

__attribute__((used)) static uint32_t
fwphy_wrdata( struct fwohci_softc *sc, uint32_t addr, uint32_t data)
{
 uint32_t fun;

 addr &= 0xf;
 data &= 0xff;

 fun = (PHYDEV_WRCMD | (addr << PHYDEV_REGADDR) | (data << PHYDEV_WRDATA));
 OWRITE(sc, OHCI_PHYACCESS, fun);
 DELAY(100);

 return(fwphy_rddata( sc, addr));
}
