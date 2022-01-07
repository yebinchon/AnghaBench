
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int platform_t ;
typedef scalar_t__ bus_addr_t ;


 int MODIFY_AUX_CORE_0 ;
 int WRITE_AUX_CORE_1 ;
 scalar_t__ bus_space_map (int ,int,int,int ,scalar_t__*) ;
 int bus_space_unmap (int ,scalar_t__,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int sev () ;
 int ti_smc0 (int,int,int ) ;

void
omap4_mp_start_ap(platform_t plat)
{
 bus_addr_t scu_addr;

 if (bus_space_map(fdtbus_bs_tag, 0x48240000, 0x1000, 0, &scu_addr) != 0)
  panic("Couldn't map the SCU\n");

 *(volatile unsigned int *)scu_addr |= 1;

 dcache_wbinv_poc_all();

 ti_smc0(0x200, 0xfffffdff, MODIFY_AUX_CORE_0);
 ti_smc0(pmap_kextract((vm_offset_t)mpentry), 0, WRITE_AUX_CORE_1);
 dsb();
 sev();
 bus_space_unmap(fdtbus_bs_tag, scu_addr, 0x1000);
}
