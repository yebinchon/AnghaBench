
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_usb2phy_softc {int dev; int grf; } ;
struct TYPE_3__ {int offset; } ;
struct rk_usb2phy_regs {TYPE_1__ clk_ctl; } ;
struct rk_usb2phy_clk_sc {struct rk_usb2phy_regs* regs; int grf; int clkdev; } ;
struct clknode_init_def {char const* name; int parent_cnt; int * parent_names; scalar_t__ id; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
typedef int regs ;
typedef int phandle_t ;
typedef int def ;
typedef int clk_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int *,int) ;
 scalar_t__ bootverbose ;
 int clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 int clk_release (int ) ;
 struct clkdom* clkdom_create (int ) ;
 int clkdom_dump (struct clkdom*) ;
 scalar_t__ clkdom_finit (struct clkdom*) ;
 int clkdom_set_ofw_mapper (struct clkdom*,int ) ;
 struct clknode* clknode_create (struct clkdom*,int *,struct clknode_init_def*) ;
 struct rk_usb2phy_clk_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int compat_data ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int * malloc (int,int ,int ) ;
 int memset (struct clknode_init_def*,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_parse_xref_list_get_length (int ,char*,char*,int*) ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_string_list_to_array (int ,char*,char const***) ;
 int rk_usb2phy_clk_clknode_class ;
 int rk_usb2phy_clk_ofw_map ;

__attribute__((used)) static int
rk_usb2phy_export_clock(struct rk_usb2phy_softc *devsc)
{
 struct clknode_init_def def;
 struct rk_usb2phy_clk_sc *sc;
 const char **clknames;
 struct clkdom *clkdom;
 struct clknode *clk;
 clk_t clk_parent;
 phandle_t node;
 phandle_t regs[2];
 int i, nclocks, ncells, error;

 node = ofw_bus_get_node(devsc->dev);

 error = ofw_bus_parse_xref_list_get_length(node, "clocks",
     "#clock-cells", &ncells);
 if (error != 0 || ncells != 1) {
  device_printf(devsc->dev, "couldn't find parent clock\n");
  return (ENXIO);
 }

 nclocks = ofw_bus_string_list_to_array(node, "clock-output-names",
     &clknames);
 if (nclocks != 1)
  return (ENXIO);

 clkdom = clkdom_create(devsc->dev);
 clkdom_set_ofw_mapper(clkdom, rk_usb2phy_clk_ofw_map);

 memset(&def, 0, sizeof(def));
 def.id = 0;
 def.name = clknames[0];
 def.parent_names = malloc(sizeof(char *) * ncells, M_OFWPROP, M_WAITOK);
 for (i = 0; i < ncells; i++) {
  error = clk_get_by_ofw_index(devsc->dev, 0, i, &clk_parent);
  if (error != 0) {
   device_printf(devsc->dev, "cannot get clock %d\n", error);
   return (ENXIO);
  }
  def.parent_names[i] = clk_get_name(clk_parent);
  clk_release(clk_parent);
 }
 def.parent_cnt = ncells;

 clk = clknode_create(clkdom, &rk_usb2phy_clk_clknode_class, &def);
 if (clk == ((void*)0)) {
  device_printf(devsc->dev, "cannot create clknode\n");
  return (ENXIO);
 }

 sc = clknode_get_softc(clk);
 sc->clkdev = device_get_parent(devsc->dev);
 sc->grf = devsc->grf;
 sc->regs = (struct rk_usb2phy_regs *)ofw_bus_search_compatible(devsc->dev, compat_data)->ocd_data;
 OF_getencprop(node, "reg", regs, sizeof(regs));
 sc->regs->clk_ctl.offset = regs[0];
 clknode_register(clkdom, clk);

 if (clkdom_finit(clkdom) != 0) {
  device_printf(devsc->dev, "cannot finalize clkdom initialization\n");
  return (ENXIO);
 }

 if (bootverbose)
  clkdom_dump(clkdom);

 return (0);
}
