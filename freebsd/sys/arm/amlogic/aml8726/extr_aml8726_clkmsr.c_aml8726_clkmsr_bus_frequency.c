
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct resource {int r_bushandle; int r_bustag; struct resource** res; } ;
struct aml8726_clkmsr_softc {int r_bushandle; int r_bustag; struct aml8726_clkmsr_softc** res; } ;
typedef int sc ;
typedef int phandle_t ;
typedef int mem ;


 int AML_CLKMSR_CLK81 ;
 scalar_t__ AML_SOC_HW_REV_UNKNOWN ;
 int KASSERT (int,char*) ;
 int OF_finddevice (char*) ;
 int OF_parent (int) ;
 int aml8726_clkmsr_clock_frequency (struct resource*,int ) ;
 scalar_t__ aml8726_soc_hw_rev ;
 scalar_t__ bus_space_map (int ,scalar_t__,scalar_t__,int ,int *) ;
 int bus_space_unmap (int ,int ,scalar_t__) ;
 int fdt_find_compatible (int,char*,int) ;
 scalar_t__ fdt_get_range (int ,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ fdt_is_compatible_strict (int,char*) ;
 scalar_t__ fdt_regsize (int,scalar_t__*,scalar_t__*) ;
 int fdtbus_bs_tag ;
 int memset (struct resource*,int ,int) ;

int
aml8726_clkmsr_bus_frequency()
{
 struct resource mem;
 struct aml8726_clkmsr_softc sc;
 phandle_t node;
 u_long pbase, psize;
 u_long start, size;
 int freq;

 KASSERT(aml8726_soc_hw_rev != AML_SOC_HW_REV_UNKNOWN,
  ("aml8726_soc_hw_rev isn't initialized"));





 if ((node = OF_finddevice("clkmsr")) != -1)
  if (fdt_is_compatible_strict(node, "amlogic,aml8726-clkmsr"))
    goto moveon;




 if ((node = OF_finddevice("/soc")) == -1)
  return (0);

 if ((node = fdt_find_compatible(node,
     "amlogic,aml8726-clkmsr", 1)) == 0)
  return (0);

moveon:
 if (fdt_get_range(OF_parent(node), 0, &pbase, &psize) != 0
     || fdt_regsize(node, &start, &size) != 0)
  return (0);

 start += pbase;

 memset(&mem, 0, sizeof(mem));

 mem.r_bustag = fdtbus_bs_tag;

 if (bus_space_map(mem.r_bustag, start, size, 0, &mem.r_bushandle) != 0)
  return (0);






 memset(&sc, 0, sizeof(sc));

 sc.res[0] = &mem;

 freq = aml8726_clkmsr_clock_frequency(&sc, AML_CLKMSR_CLK81) * 1000000;

 bus_space_unmap(mem.r_bustag, mem.r_bushandle, size);

 return (freq);
}
