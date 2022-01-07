
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 int ENXIO ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int fdt32_to_cpu (int ) ;
 int ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static int
fdt_intc_decode_ic(phandle_t node, pcell_t *intr, int *interrupt, int *trig,
    int *pol)
{

 if (!ofw_bus_node_is_compatible(node, "arm,versatile-vic"))
  return (ENXIO);

 *interrupt = fdt32_to_cpu(intr[0]);
 *trig = INTR_TRIGGER_CONFORM;
 *pol = INTR_POLARITY_CONFORM;

 return (0);
}
