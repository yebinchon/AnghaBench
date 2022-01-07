
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int bus_space_handle_t ;


 int CPUCFG_P_REG0 ;
 int KASSERT (int,char*) ;
 int aw_mc_mp_start_cpu (int ,int ,int ,int,int) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int dcache_wbinv_poc_all () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int pmap_kextract (int ) ;

__attribute__((used)) static void
aw_mc_mp_start_ap(bus_space_handle_t cpuscfg, bus_space_handle_t cpuxcfg,
    bus_space_handle_t prcm)
{
 int cluster, cpu;

 KASSERT(mp_ncpus <= 4, ("multiple clusters not yet supported"));

 dcache_wbinv_poc_all();

 bus_space_write_4(fdtbus_bs_tag, cpuscfg, CPUCFG_P_REG0,
     pmap_kextract((vm_offset_t)mpentry));

 cluster = 0;
 for (cpu = 1; cpu < mp_ncpus; cpu++)
  aw_mc_mp_start_cpu(cpuscfg, cpuxcfg, prcm, cluster, cpu);
}
