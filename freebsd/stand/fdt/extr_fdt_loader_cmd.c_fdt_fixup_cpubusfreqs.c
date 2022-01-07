
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FDT_ERR_NOTFOUND ;
 int MIN (int,int) ;
 int fdt_next_node (int ,int,int*) ;
 int fdt_node_offset_by_prop_value (int ,int,char*,int const*,int) ;
 int fdt_path_offset (int ,char*) ;
 int fdt_setprop_inplace_cell (int ,int,char*,int ) ;
 int fdtp ;

void
fdt_fixup_cpubusfreqs(unsigned long cpufreq, unsigned long busfreq)
{
 int lo, o = 0, o2, maxo = 0, depth;
 const uint32_t zero = 0;


 o = fdt_path_offset(fdtp, "/cpus");
 if (o < 0)
  return;


 depth = 0;
 maxo = o;
 while (depth != -1)
  maxo = fdt_next_node(fdtp, maxo, &depth);


 o = fdt_node_offset_by_prop_value(fdtp, o, "clock-frequency",
     &zero, sizeof(uint32_t));

 o2 = fdt_node_offset_by_prop_value(fdtp, o, "bus-frequency", &zero,
     sizeof(uint32_t));

 lo = MIN(o, o2);

 while (o != -FDT_ERR_NOTFOUND && o2 != -FDT_ERR_NOTFOUND) {

  o = fdt_node_offset_by_prop_value(fdtp, lo,
      "clock-frequency", &zero, sizeof(uint32_t));

  o2 = fdt_node_offset_by_prop_value(fdtp, lo, "bus-frequency",
      &zero, sizeof(uint32_t));


  if (lo > maxo)
   break;

  fdt_setprop_inplace_cell(fdtp, lo, "clock-frequency",
      (uint32_t)cpufreq);

  fdt_setprop_inplace_cell(fdtp, lo, "bus-frequency",
      (uint32_t)busfreq);

  lo = MIN(o, o2);
 }
}
