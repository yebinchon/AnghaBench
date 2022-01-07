
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode_init_def {int id; int parent_cnt; int * parent_names; int name; } ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct aw_gmacclk_sc {int tx_delay; int rx_delay; int clkdev; int reg; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int def ;
typedef int clk_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int CLK_IDX_COUNT ;
 int ENXIO ;
 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int aw_gmacclk_clknode_class ;
 scalar_t__ bootverbose ;
 int clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 int clk_parse_ofw_clk_name (int ,int ,int *) ;
 int clk_release (int ) ;
 struct clkdom* clkdom_create (int ) ;
 int clkdom_dump (struct clkdom*) ;
 scalar_t__ clkdom_finit (struct clkdom*) ;
 struct clknode* clknode_create (struct clkdom*,int *,struct clknode_init_def*) ;
 struct aw_gmacclk_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int * malloc (int,int ,int ) ;
 int memset (struct clknode_init_def*,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_parse_xref_list_get_length (int ,char*,char*,int*) ;
 scalar_t__ ofw_reg_to_paddr (int ,int ,int *,int *,int *) ;

__attribute__((used)) static int
aw_gmacclk_attach(device_t dev)
{
 struct clknode_init_def def;
 struct aw_gmacclk_sc *sc;
 struct clkdom *clkdom;
 struct clknode *clk;
 clk_t clk_parent;
 bus_addr_t paddr;
 bus_size_t psize;
 phandle_t node;
 int error, ncells, i;

 node = ofw_bus_get_node(dev);

 if (ofw_reg_to_paddr(node, 0, &paddr, &psize, ((void*)0)) != 0) {
  device_printf(dev, "cannot parse 'reg' property\n");
  return (ENXIO);
 }

 error = ofw_bus_parse_xref_list_get_length(node, "clocks",
     "#clock-cells", &ncells);
 if (error != 0 || ncells != CLK_IDX_COUNT) {
  device_printf(dev, "couldn't find parent clocks\n");
  return (ENXIO);
 }

 clkdom = clkdom_create(dev);

 memset(&def, 0, sizeof(def));
 error = clk_parse_ofw_clk_name(dev, node, &def.name);
 if (error != 0) {
  device_printf(dev, "cannot parse clock name\n");
  error = ENXIO;
  goto fail;
 }
 def.id = 1;
 def.parent_names = malloc(sizeof(char *) * ncells, M_OFWPROP, M_WAITOK);
 for (i = 0; i < ncells; i++) {
  error = clk_get_by_ofw_index(dev, 0, i, &clk_parent);
  if (error != 0) {
   device_printf(dev, "cannot get clock %d\n", error);
   goto fail;
  }
  def.parent_names[i] = clk_get_name(clk_parent);
  clk_release(clk_parent);
 }
 def.parent_cnt = ncells;

 clk = clknode_create(clkdom, &aw_gmacclk_clknode_class, &def);
 if (clk == ((void*)0)) {
  device_printf(dev, "cannot create clknode\n");
  error = ENXIO;
  goto fail;
 }

 sc = clknode_get_softc(clk);
 sc->reg = paddr;
 sc->clkdev = device_get_parent(dev);
 sc->tx_delay = sc->rx_delay = -1;
 OF_getencprop(node, "tx-delay", &sc->tx_delay, sizeof(sc->tx_delay));
 OF_getencprop(node, "rx-delay", &sc->rx_delay, sizeof(sc->rx_delay));

 clknode_register(clkdom, clk);

 if (clkdom_finit(clkdom) != 0) {
  device_printf(dev, "cannot finalize clkdom initialization\n");
  error = ENXIO;
  goto fail;
 }

 if (bootverbose)
  clkdom_dump(clkdom);

 return (0);

fail:
 return (error);
}
