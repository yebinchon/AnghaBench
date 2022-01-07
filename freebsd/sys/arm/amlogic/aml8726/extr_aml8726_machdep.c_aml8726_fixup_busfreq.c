
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int freq ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_setprop (int ,char*,void*,int) ;
 scalar_t__ aml8726_clkmsr_bus_frequency () ;
 scalar_t__ cpu_to_fdt32 (scalar_t__) ;
 scalar_t__ fdt_is_compatible_strict (int ,char*) ;

__attribute__((used)) static void
aml8726_fixup_busfreq(void)
{
 phandle_t node;
 pcell_t freq, prop;
 ssize_t len;






 if ((freq = aml8726_clkmsr_bus_frequency()) == 0 ||
     (node = OF_finddevice("/soc")) == 0 ||
     fdt_is_compatible_strict(node, "simple-bus") == 0)
  while (1);

 freq = cpu_to_fdt32(freq);

 len = OF_getencprop(node, "bus-frequency", &prop, sizeof(prop));
 if ((len / sizeof(prop)) == 1 && prop == 0)
  OF_setprop(node, "bus-frequency", (void *)&freq, sizeof(freq));
}
