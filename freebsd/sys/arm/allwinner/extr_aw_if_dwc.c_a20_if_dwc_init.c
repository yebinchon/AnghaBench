
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regulator_t ;
typedef int phandle_t ;
typedef int device_t ;
typedef int clk_t ;


 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 int clk_get_by_name (int ,char const*,int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int clk_set_parent_by_clk (int ,int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 int regulator_enable (int ) ;
 scalar_t__ regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
a20_if_dwc_init(device_t dev)
{
 const char *tx_parent_name;
 char *phy_type;
 clk_t clk_tx, clk_tx_parent;
 regulator_t reg;
 phandle_t node;
 int error;

 node = ofw_bus_get_node(dev);


 if (OF_getprop_alloc(node, "phy-mode", (void **)&phy_type)) {
  error = clk_get_by_ofw_name(dev, 0, "allwinner_gmac_tx", &clk_tx);
  if (error != 0) {
   device_printf(dev, "could not get tx clk\n");
   return (error);
  }

  if (strcmp(phy_type, "rgmii") == 0)
   tx_parent_name = "gmac_int_tx";
  else
   tx_parent_name = "mii_phy_tx";

  error = clk_get_by_name(dev, tx_parent_name, &clk_tx_parent);
  if (error != 0) {
   device_printf(dev, "could not get clock '%s'\n",
       tx_parent_name);
   return (error);
  }

  error = clk_set_parent_by_clk(clk_tx, clk_tx_parent);
  if (error != 0) {
   device_printf(dev, "could not set tx clk parent\n");
   return (error);
  }
 }


 if (regulator_get_by_ofw_property(dev, 0, "phy-supply", &reg) == 0) {
  error = regulator_enable(reg);
  if (error != 0) {
   device_printf(dev, "could not enable PHY regulator\n");
   return (error);
  }
 }

 return (0);
}
