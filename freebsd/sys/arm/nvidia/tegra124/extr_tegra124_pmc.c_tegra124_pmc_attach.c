
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra124_pmc_softc {scalar_t__ sysclkreq_high; int * mem_res; int dev; int clk; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int PMC_CNTRL ;
 int PMC_CNTRL_CPU_PWRREQ_OE ;
 int PMC_CNTRL_SYSCLK_OE ;
 int PMC_CNTRL_SYSCLK_POLARITY ;
 int PMC_IO_DPD2_STATUS ;
 int PMC_IO_DPD2_STATUS_HV ;
 int PMC_IO_DPD_STATUS ;
 int PMC_IO_DPD_STATUS_HDMI ;
 int PMC_LOCK_INIT (struct tegra124_pmc_softc*) ;
 int RD4 (struct tegra124_pmc_softc*,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int WR4 (struct tegra124_pmc_softc*,int ,int ) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 struct tegra124_pmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int panic (char*) ;
 struct tegra124_pmc_softc* pmc_sc ;
 int tegra124_pmc_parse_fdt (struct tegra124_pmc_softc*,int ) ;

__attribute__((used)) static int
tegra124_pmc_attach(device_t dev)
{
 struct tegra124_pmc_softc *sc;
 int rid, rv;
 uint32_t reg;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 rv = tegra124_pmc_parse_fdt(sc, node);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot parse FDT data\n");
  return (rv);
 }

 rv = clk_get_by_ofw_name(sc->dev, 0, "pclk", &sc->clk);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get \"pclk\" clock\n");
  return (ENXIO);
 }

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 PMC_LOCK_INIT(sc);


 reg = RD4(sc, PMC_CNTRL);
 reg |= PMC_CNTRL_CPU_PWRREQ_OE;
 WR4(sc, PMC_CNTRL, reg);


 reg = RD4(sc, PMC_CNTRL);
 if (sc->sysclkreq_high)
  reg &= ~PMC_CNTRL_SYSCLK_POLARITY;
 else
  reg |= PMC_CNTRL_SYSCLK_POLARITY;
 WR4(sc, PMC_CNTRL, reg);


 reg = RD4(sc, PMC_CNTRL);
 reg |= PMC_CNTRL_SYSCLK_OE;
 WR4(sc, PMC_CNTRL, reg);





 reg = RD4(sc, PMC_IO_DPD_STATUS);
 reg &= ~ PMC_IO_DPD_STATUS_HDMI;
 WR4(sc, PMC_IO_DPD_STATUS, reg);

 reg = RD4(sc, PMC_IO_DPD2_STATUS);
 reg &= ~ PMC_IO_DPD2_STATUS_HV;
 WR4(sc, PMC_IO_DPD2_STATUS, reg);

 if (pmc_sc != ((void*)0))
  panic("tegra124_pmc: double driver attach");
 pmc_sc = sc;
 return (0);
}
