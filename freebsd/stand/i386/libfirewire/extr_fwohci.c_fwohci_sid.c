
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohci_softc {int state; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int FWOHCI_INTMASK ;
 int FWOHCI_NODEID ;
 int FWOHCI_STATE_NORMAL ;
 int OHCI_AREQHI ;
 int OHCI_ATRETRY ;
 int OHCI_CNTL_CYCMTR ;
 int OHCI_CNTL_CYCTIMER ;
 int OHCI_INT_PHY_BUS_R ;
 int OHCI_LNKCTL ;
 int OHCI_LNKCTLCLR ;
 int OHCI_NODE_ROOT ;
 int OHCI_NODE_VALID ;
 int OHCI_PREQHI ;
 int OHCI_PREQLO ;
 int OHCI_PREQUPPER ;
 int OHCI_SID_CNT ;
 int OHCI_SID_ERR ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* fc ;
 int printf (char*) ;

void
fwohci_sid(struct fwohci_softc *sc)
{
  uint32_t node_id;
  int plen;

  node_id = OREAD(sc, FWOHCI_NODEID);
  if (!(node_id & OHCI_NODE_VALID)) {



   return;
  }


  OWRITE(sc, FWOHCI_INTMASK, OHCI_INT_PHY_BUS_R);

  OWRITE(sc, OHCI_AREQHI, 1 << 31);

  OWRITE(sc, OHCI_PREQHI, 0x7fffffff);
  OWRITE(sc, OHCI_PREQLO, 0xffffffff);
  OWRITE(sc, OHCI_PREQUPPER, 0x10000);

  OWRITE(sc, OHCI_ATRETRY, 1<<(13+16) | 0xfff);




  plen = OREAD(sc, OHCI_SID_CNT);
  device_printf(fc->dev, "node_id=0x%08x, gen=%d, ",
   node_id, (plen >> 16) & 0xff);
  if (node_id & OHCI_NODE_ROOT) {
   device_printf(sc->dev, "CYCLEMASTER mode\n");
   OWRITE(sc, OHCI_LNKCTL,
    OHCI_CNTL_CYCMTR | OHCI_CNTL_CYCTIMER);
  } else {
   device_printf(sc->dev, "non CYCLEMASTER mode\n");
   OWRITE(sc, OHCI_LNKCTLCLR, OHCI_CNTL_CYCMTR);
   OWRITE(sc, OHCI_LNKCTL, OHCI_CNTL_CYCTIMER);
  }
  if (plen & OHCI_SID_ERR) {
   device_printf(fc->dev, "SID Error\n");
   return;
  }
  device_printf(sc->dev, "bus reset phase done\n");
  sc->state = FWOHCI_STATE_NORMAL;
}
