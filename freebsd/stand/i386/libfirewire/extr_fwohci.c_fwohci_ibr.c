
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fwohci_softc {int * config_rom; int dev; } ;


 int FW_PHY_IBR ;
 int FW_PHY_IBR_REG ;
 int FW_PHY_ISBR ;
 int FW_PHY_ISBR_REG ;
 int OHCI_BUS_OPT ;
 int OHCI_CROMHDR ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 int device_printf (int ,char*) ;
 int fwphy_rddata (struct fwohci_softc*,int ) ;
 int fwphy_wrdata (struct fwohci_softc*,int ,int ) ;
 int ntohl (int ) ;

void
fwohci_ibr(struct fwohci_softc *sc)
{
 uint32_t fun;

 device_printf(sc->dev, "Initiate bus reset\n");





 OWRITE(sc, OHCI_CROMHDR, ntohl(sc->config_rom[0]));
 OWRITE(sc, OHCI_BUS_OPT, ntohl(sc->config_rom[2]));






 fun = fwphy_rddata(sc, FW_PHY_IBR_REG);
 fun |= FW_PHY_IBR;
 fun = fwphy_wrdata(sc, FW_PHY_IBR_REG, fun);





}
