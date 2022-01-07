
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_clkmsr_softc {int dev; } ;
typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int freq ;


 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_node_from_xref (scalar_t__) ;
 int OF_setprop (int ,char*,void*,int) ;
 int cpu_to_fdt32 (int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static void
aml8726_clkmsr_fixup_clk81(struct aml8726_clkmsr_softc *sc, int freq)
{
 pcell_t prop;
 ssize_t len;
 phandle_t clk_node;
 phandle_t node;

 node = ofw_bus_get_node(sc->dev);

 len = OF_getencprop(node, "clocks", &prop, sizeof(prop));
 if ((len / sizeof(prop)) != 1 || prop == 0 ||
     (clk_node = OF_node_from_xref(prop)) == 0)
  return;

 len = OF_getencprop(clk_node, "clock-frequency", &prop, sizeof(prop));
 if ((len / sizeof(prop)) != 1 || prop != 0)
  return;

 freq = cpu_to_fdt32(freq);

 OF_setprop(clk_node, "clock-frequency", (void *)&freq, sizeof(freq));
}
