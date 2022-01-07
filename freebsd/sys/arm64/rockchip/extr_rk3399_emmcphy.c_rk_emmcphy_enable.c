
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct rk_emmcphy_softc {int syscon; int * clk; struct rk_emmcphy_conf* phy_conf; } ;
struct rk_emmcphy_conf {int dummy; } ;
struct phynode {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int DELAY (int) ;
 int ENXIO ;
 int ERANGE ;
 int GRF_EMMCPHY_CON0 ;
 int GRF_EMMCPHY_CON6 ;
 int GRF_EMMCPHY_STATUS ;
 int PHYCTRL_CALDONE ;
 int PHYCTRL_DLLRDY ;
 int PHYCTRL_DR_TY ;
 int PHYCTRL_ENDLL ;
 int PHYCTRL_FRQSEL ;
 int PHYCTRL_FRQSEL_100M ;
 int PHYCTRL_FRQSEL_150M ;
 int PHYCTRL_FRQSEL_200M ;
 int PHYCTRL_FRQSEL_50M ;
 int PHYCTRL_OTAPDLYENA ;
 int PHYCTRL_OTAPDLYSEL ;
 int PHYCTRL_PDB ;
 int SHIFTIN (int,int) ;
 int SYSCON_READ_4 (int ,int ) ;
 int SYSCON_WRITE_4 (int ,int ,int) ;
 scalar_t__ bootverbose ;
 int clk_get_by_ofw_name (int ,int ,char*,int **) ;
 int clk_get_freq (int *,int*) ;
 int compat_data ;
 struct rk_emmcphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;

__attribute__((used)) static int
rk_emmcphy_enable(struct phynode *phynode, bool enable)
{
 struct rk_emmcphy_softc *sc;
 device_t dev;
 intptr_t phy;
 uint64_t rate, frqsel;
 uint32_t mask, val;
 int error;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (bootverbose)
  device_printf(dev, "Phy id: %ld\n", phy);

 if (phy != 0) {
  device_printf(dev, "Unknown phy: %ld\n", phy);
  return (ERANGE);
 }
 if (enable) {

  mask = PHYCTRL_DR_TY;
  val = SHIFTIN(0, PHYCTRL_DR_TY);
  SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON6,
      (mask << 16) | val);


  mask = PHYCTRL_OTAPDLYENA | PHYCTRL_OTAPDLYSEL;
  val = PHYCTRL_OTAPDLYENA | SHIFTIN(4, PHYCTRL_OTAPDLYSEL);
  SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON0,
      (mask << 16) | val);
 }


 mask = PHYCTRL_ENDLL | PHYCTRL_PDB;
 val = 0;
 SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON6, (mask << 16) | val);

 if (enable == 0)
  return (0);

 sc->phy_conf = (struct rk_emmcphy_conf *)ofw_bus_search_compatible(dev,
     compat_data)->ocd_data;


 error = clk_get_by_ofw_name(dev, 0, "emmcclk", &sc->clk);
 if (error != 0) {
  device_printf(dev, "cannot get emmcclk clock, continue\n");
  sc->clk = ((void*)0);
 } else
  device_printf(dev, "got emmcclk clock\n");

 if (sc->clk) {
  error = clk_get_freq(sc->clk, &rate);
  if (error != 0) {
   device_printf(dev, "cannot get clock frequency\n");
   return (ENXIO);
  }
 } else
  rate = 0;

 if (rate != 0) {
  if (rate < 75000000)
   frqsel = PHYCTRL_FRQSEL_50M;
  else if (rate < 125000000)
   frqsel = PHYCTRL_FRQSEL_100M;
  else if (rate < 175000000)
   frqsel = PHYCTRL_FRQSEL_150M;
  else
   frqsel = PHYCTRL_FRQSEL_200M;
 } else
  frqsel = PHYCTRL_FRQSEL_200M;

 DELAY(3);


 mask = PHYCTRL_PDB;
 val = PHYCTRL_PDB;
 SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON6, (mask << 16) | val);


 DELAY(10);
 val = SYSCON_READ_4(sc->syscon, GRF_EMMCPHY_STATUS);
 if ((val & PHYCTRL_CALDONE) == 0) {
  device_printf(dev, "PHY calibration did not complete\n");
  return (ENXIO);
 }


 mask = PHYCTRL_FRQSEL;
 val = SHIFTIN(frqsel, PHYCTRL_FRQSEL);
 SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON0, (mask << 16) | val);


 mask = PHYCTRL_ENDLL;
 val = PHYCTRL_ENDLL;
 SYSCON_WRITE_4(sc->syscon, GRF_EMMCPHY_CON6, (mask << 16) | val);

 if (rate != 0) {
  DELAY(50000);
  val = SYSCON_READ_4(sc->syscon, GRF_EMMCPHY_STATUS);
  if ((val & PHYCTRL_DLLRDY) == 0) {
   device_printf(dev, "DLL loop failed to lock\n");
   return (ENXIO);
  }
 }

 return (0);
}
