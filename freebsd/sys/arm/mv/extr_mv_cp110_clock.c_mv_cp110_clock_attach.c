
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mv_cp110_clock_softc {int mtx; int * syscon; int dev; } ;
struct clkdom {int dummy; } ;
struct TYPE_11__ {int parent_cnt; char** parent_names; void* name; scalar_t__ id; } ;
struct clk_gate_def {int mask; int on_value; TYPE_1__ clkdef; scalar_t__ off_value; int shift; int offset; } ;
typedef int device_t ;
typedef int def ;
struct TYPE_12__ {char* name; void* parent_names; } ;
struct TYPE_14__ {TYPE_2__ clkdef; } ;
struct TYPE_13__ {char* name; int shift; } ;


 int CP110_CLOCK_GATING_OFFSET ;
 scalar_t__ CP110_MAX_CLOCK ;
 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ SYSCON_GET_HANDLE (int ,int **) ;
 scalar_t__ bootverbose ;
 void* clk_parents_0 ;
 void* clk_parents_1 ;
 struct clkdom* clkdom_create (int ) ;
 int clkdom_dump (struct clkdom*) ;
 int clkdom_finit (struct clkdom*) ;
 int clkdom_set_ofw_mapper (struct clkdom*,int ) ;
 int clknode_fixed_register (struct clkdom*,TYPE_5__*) ;
 int clknode_gate_register (struct clkdom*,struct clk_gate_def*) ;
 void* core_parents_0 ;
 void* core_parents_1 ;
 TYPE_5__ cp110_clk_core ;
 TYPE_5__ cp110_clk_pll_0 ;
 TYPE_5__ cp110_clk_ppv2_core ;
 TYPE_5__ cp110_clk_sdio ;
 TYPE_5__ cp110_clk_x2core ;
 TYPE_3__* cp110_gates ;
 int cp110_ofw_map ;
 int device_get_nameunit (int ) ;
 struct mv_cp110_clock_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int memset (struct clk_gate_def*,int ,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 void* mv_cp110_clock_name (int ,char*) ;
 int nitems (TYPE_3__*) ;

__attribute__((used)) static int
mv_cp110_clock_attach(device_t dev)
{
 struct mv_cp110_clock_softc *sc;
 struct clkdom *clkdom;
 struct clk_gate_def def;
 char *pll0_name;
 int unit, i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (SYSCON_GET_HANDLE(sc->dev, &sc->syscon) != 0 ||
     sc->syscon == ((void*)0)) {
  device_printf(dev, "cannot get syscon for device\n");
  return (ENXIO);
 }

 unit = device_get_unit(dev);
 if (unit > 1) {
  device_printf(dev, "Bogus cp110-system-controller unit %d\n", unit);
  return (ENXIO);
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 clkdom = clkdom_create(dev);
 clkdom_set_ofw_mapper(clkdom, cp110_ofw_map);

 pll0_name = mv_cp110_clock_name(dev, "cp110-pll0");
 cp110_clk_pll_0.clkdef.name = pll0_name;
 clknode_fixed_register(clkdom, &cp110_clk_pll_0);

 cp110_clk_ppv2_core.clkdef.name = mv_cp110_clock_name(dev, "cp110-ppv2");
 cp110_clk_ppv2_core.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
 clknode_fixed_register(clkdom, &cp110_clk_ppv2_core);

 cp110_clk_x2core.clkdef.name = mv_cp110_clock_name(dev, "cp110-x2core");
 cp110_clk_x2core.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
 clknode_fixed_register(clkdom, &cp110_clk_x2core);

 cp110_clk_core.clkdef.name = mv_cp110_clock_name(dev, "cp110-core");
 cp110_clk_core.clkdef.parent_names = (unit == 0) ? core_parents_0 : core_parents_1;
 clknode_fixed_register(clkdom, &cp110_clk_core);



 cp110_clk_sdio.clkdef.name = mv_cp110_clock_name(dev, "cp110-sdio");
 cp110_clk_sdio.clkdef.parent_names = (unit == 0) ? clk_parents_0 : clk_parents_1;
 clknode_fixed_register(clkdom, &cp110_clk_sdio);

 for (i = 0; i < nitems(cp110_gates); i++) {
  if (cp110_gates[i].name == ((void*)0))
   continue;

  memset(&def, 0, sizeof(def));
  def.clkdef.id = CP110_MAX_CLOCK + i;
  def.clkdef.name = mv_cp110_clock_name(dev, cp110_gates[i].name);
  def.clkdef.parent_cnt = 1;
  def.offset = CP110_CLOCK_GATING_OFFSET;
  def.shift = cp110_gates[i].shift;
  def.mask = 1;
  def.on_value = 1;
  def.off_value = 0;

  switch (i) {
  case 132:
  case 134:
  case 129:
   def.clkdef.parent_names = &cp110_clk_ppv2_core.clkdef.name;
   break;
  case 128:
   def.clkdef.parent_names = &cp110_clk_sdio.clkdef.name;
   break;
  case 133:
  case 130:
  case 131:
  case 136:
  case 135:
   def.clkdef.parent_names = &cp110_clk_x2core.clkdef.name;
   break;
  default:
   def.clkdef.parent_names = &cp110_clk_core.clkdef.name;
   break;
  }

  clknode_gate_register(clkdom, &def);
 }

 clkdom_finit(clkdom);

 if (bootverbose)
  clkdom_dump(clkdom);

 return (0);
}
