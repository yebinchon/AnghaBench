
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int SCU_CONTROL_ENABLE ;
 int SCU_CONTROL_REG ;
 int ZYNQ7_CPU1_ENTRY ;
 scalar_t__ bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int sev () ;

void
zynq7_mp_start_ap(platform_t plat)
{
 bus_space_handle_t scu_handle;
 bus_space_handle_t ocm_handle;
 uint32_t scu_ctrl;


 if (bus_space_map(fdtbus_bs_tag, SCU_CONTROL_REG, 4,
     0, &scu_handle) != 0)
  panic("platform_mp_start_ap: Couldn't map SCU config reg\n");


 scu_ctrl = bus_space_read_4(fdtbus_bs_tag, scu_handle, 0);
 scu_ctrl |= SCU_CONTROL_ENABLE;
 bus_space_write_4(fdtbus_bs_tag, scu_handle, 0, scu_ctrl);

 bus_space_unmap(fdtbus_bs_tag, scu_handle, 4);


 if (bus_space_map(fdtbus_bs_tag, ZYNQ7_CPU1_ENTRY, 4,
     0, &ocm_handle) != 0)
  panic("platform_mp_start_ap: Couldn't map OCM\n");


 bus_space_write_4(fdtbus_bs_tag, ocm_handle, 0,
     pmap_kextract((vm_offset_t)mpentry));

 bus_space_unmap(fdtbus_bs_tag, ocm_handle, 4);
 dcache_wbinv_poc_all();


 dsb();
 sev();
}
