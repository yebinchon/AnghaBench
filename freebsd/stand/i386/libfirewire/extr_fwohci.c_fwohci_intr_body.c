
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohci_softc {scalar_t__ state; int * config_rom; } ;
struct TYPE_2__ {int dev; } ;


 int FWOHCI_INTMASK ;
 int FWOHCI_INTMASKCLR ;
 scalar_t__ FWOHCI_STATE_BUSRESET ;
 int OHCI_BUS_OPT ;
 int OHCI_CNTL_CYCSRC ;
 int OHCI_CROMHDR ;
 int OHCI_INT_CYC_64SECOND ;
 int OHCI_INT_CYC_ERR ;
 int OHCI_INT_CYC_LONG ;
 int OHCI_INT_CYC_LOST ;
 int OHCI_INT_CYC_START ;
 int OHCI_INT_DMA_ARRQ ;
 int OHCI_INT_DMA_ARRS ;
 int OHCI_INT_DMA_ATRQ ;
 int OHCI_INT_DMA_ATRS ;
 int OHCI_INT_DMA_IR ;
 int OHCI_INT_DMA_IT ;
 int OHCI_INT_DMA_PRRQ ;
 int OHCI_INT_DMA_PRRS ;
 int OHCI_INT_EN ;
 int OHCI_INT_ERR ;
 int OHCI_INT_LR_ERR ;
 int OHCI_INT_PHY_BUS_R ;
 int OHCI_INT_PHY_INT ;
 int OHCI_INT_PHY_REG ;
 int OHCI_INT_PHY_SID ;
 int OHCI_INT_PW_ERR ;
 int OHCI_LNKCTLCLR ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* fc ;
 int fwohci_sid (struct fwohci_softc*) ;
 int ntohl (int ) ;

__attribute__((used)) static void
fwohci_intr_body(struct fwohci_softc *sc, uint32_t stat, int count)
{
 if(stat & OHCI_INT_PHY_BUS_R ){
  device_printf(fc->dev, "BUS reset\n");
  if (sc->state == FWOHCI_STATE_BUSRESET)
   goto busresetout;
  sc->state = FWOHCI_STATE_BUSRESET;

  OWRITE(sc, FWOHCI_INTMASKCLR, OHCI_INT_PHY_BUS_R);

  OWRITE(sc, FWOHCI_INTMASKCLR, OHCI_INT_CYC_LOST);
  OWRITE(sc, OHCI_LNKCTLCLR, OHCI_CNTL_CYCSRC);

  OWRITE(sc, OHCI_CROMHDR, ntohl(sc->config_rom[0]));
  OWRITE(sc, OHCI_BUS_OPT, ntohl(sc->config_rom[2]));
 } else if (sc->state == FWOHCI_STATE_BUSRESET) {
  fwohci_sid(sc);
 }
busresetout:
 return;
}
