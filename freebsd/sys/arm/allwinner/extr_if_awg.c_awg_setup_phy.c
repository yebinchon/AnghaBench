
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct awg_softc {scalar_t__ type; int ** res; int * syscon; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int clk_t ;


 int EMAC_CLK_EPHY_ADDR ;
 int EMAC_CLK_EPHY_ADDR_SHIFT ;
 int EMAC_CLK_EPHY_LED_POL ;
 int EMAC_CLK_EPHY_SELECT ;
 int EMAC_CLK_EPHY_SHUTDOWN ;
 int EMAC_CLK_ERXDC ;
 int EMAC_CLK_ERXDC_SHIFT ;
 int EMAC_CLK_ETXDC ;
 int EMAC_CLK_ETXDC_SHIFT ;
 int EMAC_CLK_PIT ;
 int EMAC_CLK_PIT_MII ;
 int EMAC_CLK_PIT_RGMII ;
 int EMAC_CLK_RMII_EN ;
 int EMAC_CLK_SRC ;
 int EMAC_CLK_SRC_MII ;
 int EMAC_CLK_SRC_RGMII ;
 scalar_t__ EMAC_H3 ;
 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_prop_free (char*) ;
 size_t _RES_SYSCON ;
 scalar_t__ awg_has_internal_phy (int ) ;
 int awg_parse_delay (int ,int*,int*) ;
 scalar_t__ bootverbose ;
 int clk_enable (int ) ;
 int clk_get_by_name (int ,char const*,int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_parent_by_clk (int ,int ) ;
 struct awg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int syscon_read_emac_clk_reg (int ) ;
 int syscon_write_emac_clk_reg (int ,int) ;

__attribute__((used)) static int
awg_setup_phy(device_t dev)
{
 struct awg_softc *sc;
 clk_t clk_tx, clk_tx_parent;
 const char *tx_parent_name;
 char *phy_type;
 phandle_t node;
 uint32_t reg, tx_delay, rx_delay;
 int error;
 bool use_syscon;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);
 use_syscon = 0;

 if (OF_getprop_alloc(node, "phy-mode", (void **)&phy_type) == 0)
  return (0);

 if (sc->syscon != ((void*)0) || sc->res[_RES_SYSCON] != ((void*)0))
  use_syscon = 1;

 if (bootverbose)
  device_printf(dev, "PHY type: %s, conf mode: %s\n", phy_type,
      use_syscon ? "reg" : "clk");

 if (use_syscon) {







  reg = syscon_read_emac_clk_reg(dev);
  reg &= ~(EMAC_CLK_PIT | EMAC_CLK_SRC | EMAC_CLK_RMII_EN);
  if (strncmp(phy_type, "rgmii", 5) == 0)
   reg |= EMAC_CLK_PIT_RGMII | EMAC_CLK_SRC_RGMII;
  else if (strcmp(phy_type, "rmii") == 0)
   reg |= EMAC_CLK_RMII_EN;
  else
   reg |= EMAC_CLK_PIT_MII | EMAC_CLK_SRC_MII;







  error = awg_parse_delay(dev, &tx_delay, &rx_delay);
  if (error != 0)
   goto fail;


  reg &= ~(EMAC_CLK_ETXDC | EMAC_CLK_ERXDC);
  if (tx_delay > 0)
   reg |= (tx_delay << EMAC_CLK_ETXDC_SHIFT);
  if (rx_delay > 0)
   reg |= (rx_delay << EMAC_CLK_ERXDC_SHIFT);

  if (sc->type == EMAC_H3) {
   if (awg_has_internal_phy(dev)) {
    reg |= EMAC_CLK_EPHY_SELECT;
    reg &= ~EMAC_CLK_EPHY_SHUTDOWN;
    if (OF_hasprop(node,
        "allwinner,leds-active-low"))
     reg |= EMAC_CLK_EPHY_LED_POL;
    else
     reg &= ~EMAC_CLK_EPHY_LED_POL;


    reg &= ~EMAC_CLK_EPHY_ADDR;
    reg |= (1 << EMAC_CLK_EPHY_ADDR_SHIFT);
   } else {
    reg &= ~EMAC_CLK_EPHY_SELECT;
   }
  }

  if (bootverbose)
   device_printf(dev, "EMAC clock: 0x%08x\n", reg);
  syscon_write_emac_clk_reg(dev, reg);
 } else {
  if (strncmp(phy_type, "rgmii", 5) == 0)
   tx_parent_name = "emac_int_tx";
  else
   tx_parent_name = "mii_phy_tx";


  error = clk_get_by_ofw_name(dev, 0, "tx", &clk_tx);
  if (error != 0) {
   device_printf(dev, "cannot get tx clock\n");
   goto fail;
  }


  error = clk_get_by_name(dev, tx_parent_name, &clk_tx_parent);
  if (error != 0) {
   device_printf(dev, "cannot get clock '%s'\n",
       tx_parent_name);
   goto fail;
  }


  error = clk_set_parent_by_clk(clk_tx, clk_tx_parent);
  if (error != 0) {
   device_printf(dev, "cannot set tx clock parent\n");
   goto fail;
  }


  error = clk_enable(clk_tx);
  if (error != 0) {
   device_printf(dev, "cannot enable tx clock\n");
   goto fail;
  }
 }

 error = 0;

fail:
 OF_prop_free(phy_type);
 return (error);
}
