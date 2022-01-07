
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phandle_t ;
struct TYPE_2__ {int quirks; int * compat; } ;




 int CPU_SET (int ,int *) ;
 int KASSERT (int,char*) ;
 int MP_QUIRK_CPULIST ;
 int MTX_SPIN ;
 int OF_peer (int ) ;
 int all_cpus ;
 int ap_boot_mtx ;
 int arm64_bus_method ;
 int cpu0 ;
 int cpu_init_acpi () ;
 int cpu_init_fdt ;
 TYPE_1__* fdt_quirks ;
 int mp_quirks ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_node_is_compatible (int ,int *) ;
 int ofw_cpu_early_foreach (int ,int) ;

void
cpu_mp_start(void)
{





 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);

 CPU_SET(0, &all_cpus);

 switch(arm64_bus_method) {
 default:
  break;
 }
}
