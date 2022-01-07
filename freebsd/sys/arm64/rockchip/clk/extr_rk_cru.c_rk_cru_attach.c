
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_cru_softc {int nclks; int * clkdom; scalar_t__ gates; TYPE_2__* clks; int mtx; int res; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_3__ {int link; int fract; int fixed; int armclk; int mux; int composite; int pll; } ;
struct TYPE_4__ {int type; TYPE_1__ clk; } ;


 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int clk_set_assigned (int ,int ) ;
 int * clkdom_create (int ) ;
 int clkdom_dump (int *) ;
 scalar_t__ clkdom_finit (int *) ;
 int clknode_fixed_register (int *,int ) ;
 int clknode_link_register (int *,int ) ;
 int device_get_nameunit (int ) ;
 struct rk_cru_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_register_ofw_provider (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int panic (char*) ;
 int rk3328_clk_pll_register (int *,int ) ;
 int rk3399_clk_pll_register (int *,int ) ;
 int rk_clk_armclk_register (int *,int ) ;
 int rk_clk_composite_register (int *,int ) ;
 int rk_clk_fract_register (int *,int ) ;
 int rk_clk_mux_register (int *,int ) ;
 int rk_cru_register_gates (struct rk_cru_softc*) ;
 int rk_cru_spec ;

int
rk_cru_attach(device_t dev)
{
 struct rk_cru_softc *sc;
 phandle_t node;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(dev);

 if (bus_alloc_resources(dev, rk_cru_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 sc->clkdom = clkdom_create(dev);
 if (sc->clkdom == ((void*)0))
  panic("Cannot create clkdom\n");

 for (i = 0; i < sc->nclks; i++) {
  switch (sc->clks[i].type) {
  case 128:
   break;
  case 136:
   rk3328_clk_pll_register(sc->clkdom,
       sc->clks[i].clk.pll);
   break;
  case 135:
   rk3399_clk_pll_register(sc->clkdom,
       sc->clks[i].clk.pll);
   break;
  case 133:
   rk_clk_composite_register(sc->clkdom,
       sc->clks[i].clk.composite);
   break;
  case 129:
   rk_clk_mux_register(sc->clkdom, sc->clks[i].clk.mux);
   break;
  case 134:
   rk_clk_armclk_register(sc->clkdom,
       sc->clks[i].clk.armclk);
   break;
  case 132:
   clknode_fixed_register(sc->clkdom,
       sc->clks[i].clk.fixed);
   break;
  case 131:
   rk_clk_fract_register(sc->clkdom,
       sc->clks[i].clk.fract);
   break;
  case 130:
   clknode_link_register(sc->clkdom,
       sc->clks[i].clk.link);
   break;
  default:
   device_printf(dev, "Unknown clock type\n");
   return (ENXIO);
  }
 }

 if (sc->gates)
  rk_cru_register_gates(sc);

 if (clkdom_finit(sc->clkdom) != 0)
  panic("cannot finalize clkdom initialization\n");

 if (bootverbose)
  clkdom_dump(sc->clkdom);

 clk_set_assigned(dev, node);


 hwreset_register_ofw_provider(dev);

 return (0);
}
