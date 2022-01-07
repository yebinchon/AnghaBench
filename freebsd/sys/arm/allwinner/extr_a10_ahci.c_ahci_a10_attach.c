
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int numirqs; int r_mem; scalar_t__ r_rid; int ch_start; scalar_t__ msi; scalar_t__ subdeviceid; scalar_t__ subvendorid; scalar_t__ deviceid; scalar_t__ vendorid; int quirks; } ;
typedef int device_t ;
typedef int * clk_t ;


 int AHCI_Q_NOPMP ;
 int CLK_SET_ROUND_DOWN ;
 int ENXIO ;
 int PLL_FREQ ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ahci_a10_ch_start ;
 int ahci_a10_ctlr_reset (int ) ;
 int ahci_attach (int ) ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int ) ;
 int clk_enable (int *) ;
 int clk_get_by_ofw_index (int ,int ,int,int **) ;
 int clk_release (int *) ;
 int clk_set_freq (int *,int ,int ) ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ahci_a10_attach(device_t dev)
{
 int error;
 struct ahci_controller *ctlr;
 clk_t clk_pll, clk_gate;

 ctlr = device_get_softc(dev);
 clk_pll = clk_gate = ((void*)0);

 ctlr->quirks = AHCI_Q_NOPMP;
 ctlr->vendorid = 0;
 ctlr->deviceid = 0;
 ctlr->subvendorid = 0;
 ctlr->subdeviceid = 0;
 ctlr->r_rid = 0;
 if (!(ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE)))
  return (ENXIO);


 error = clk_get_by_ofw_index(dev, 0, 0, &clk_gate);
 if (error != 0) {
  device_printf(dev, "Cannot get gate clock\n");
  goto fail;
 }
 error = clk_get_by_ofw_index(dev, 0, 1, &clk_pll);
 if (error != 0) {
  device_printf(dev, "Cannot get PLL clock\n");
  goto fail;
 }
 error = clk_set_freq(clk_pll, PLL_FREQ, CLK_SET_ROUND_DOWN);
 if (error != 0) {
  device_printf(dev, "Cannot set PLL frequency\n");
  goto fail;
 }
 error = clk_enable(clk_pll);
 if (error != 0) {
  device_printf(dev, "Cannot enable PLL\n");
  goto fail;
 }
 error = clk_enable(clk_gate);
 if (error != 0) {
  device_printf(dev, "Cannot enable clk gate\n");
  goto fail;
 }


 if ((error = ahci_a10_ctlr_reset(dev)) != 0)
  goto fail;




 ctlr->msi = 0;
 ctlr->numirqs = 1;


 ctlr->ch_start = ahci_a10_ch_start;




 return (ahci_attach(dev));

fail:
 if (clk_gate != ((void*)0))
  clk_release(clk_gate);
 if (clk_pll != ((void*)0))
  clk_release(clk_pll);
 bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
 return (error);
}
