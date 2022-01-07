
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aw_ccung_softc {int nclks; scalar_t__ resets; int * clkdom; scalar_t__ gates; TYPE_2__* clks; int mtx; int res; int dev; } ;
typedef int device_t ;
struct TYPE_3__ {int nmm; int np; int mipi; int frac; int prediv_mux; int m; int nm; int nkmp; int fixed; int div; int mux; } ;
struct TYPE_4__ {int type; TYPE_1__ clk; } ;
 int ENXIO ;
 int MTX_DEF ;
 int aw_ccung_init_clocks (struct aw_ccung_softc*) ;
 int aw_ccung_register_gates (struct aw_ccung_softc*) ;
 int aw_ccung_spec ;
 int aw_clk_frac_register (int *,int ) ;
 int aw_clk_m_register (int *,int ) ;
 int aw_clk_mipi_register (int *,int ) ;
 int aw_clk_nkmp_register (int *,int ) ;
 int aw_clk_nm_register (int *,int ) ;
 int aw_clk_nmm_register (int *,int ) ;
 int aw_clk_np_register (int *,int ) ;
 int aw_clk_prediv_mux_register (int *,int ) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int * clkdom_create (int ) ;
 int clkdom_dump (int *) ;
 scalar_t__ clkdom_finit (int *) ;
 int clkdom_unlock (int *) ;
 int clkdom_xlock (int *) ;
 int clknode_div_register (int *,int ) ;
 int clknode_fixed_register (int *,int ) ;
 int clknode_mux_register (int *,int ) ;
 int device_get_nameunit (int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_register_ofw_provider (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int panic (char*) ;

int
aw_ccung_attach(device_t dev)
{
 struct aw_ccung_softc *sc;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, aw_ccung_spec, &sc->res) != 0) {
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
  case 134:
   clknode_mux_register(sc->clkdom, sc->clks[i].clk.mux);
   break;
  case 139:
   clknode_div_register(sc->clkdom, sc->clks[i].clk.div);
   break;
  case 138:
   clknode_fixed_register(sc->clkdom,
       sc->clks[i].clk.fixed);
   break;
  case 133:
   aw_clk_nkmp_register(sc->clkdom, sc->clks[i].clk.nkmp);
   break;
  case 132:
   aw_clk_nm_register(sc->clkdom, sc->clks[i].clk.nm);
   break;
  case 136:
   aw_clk_m_register(sc->clkdom, sc->clks[i].clk.m);
   break;
  case 129:
   aw_clk_prediv_mux_register(sc->clkdom,
       sc->clks[i].clk.prediv_mux);
   break;
  case 137:
   aw_clk_frac_register(sc->clkdom, sc->clks[i].clk.frac);
   break;
  case 135:
   aw_clk_mipi_register(sc->clkdom, sc->clks[i].clk.mipi);
   break;
  case 130:
   aw_clk_np_register(sc->clkdom, sc->clks[i].clk.np);
   break;
  case 131:
   aw_clk_nmm_register(sc->clkdom, sc->clks[i].clk.nmm);
   break;
  }
 }

 if (sc->gates)
  aw_ccung_register_gates(sc);
 if (clkdom_finit(sc->clkdom) != 0)
  panic("cannot finalize clkdom initialization\n");

 clkdom_xlock(sc->clkdom);
 aw_ccung_init_clocks(sc);
 clkdom_unlock(sc->clkdom);

 if (bootverbose)
  clkdom_dump(sc->clkdom);


 if (sc->resets)
  hwreset_register_ofw_provider(dev);

 return (0);
}
