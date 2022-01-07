
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int bus_space_handle_t ;


 int MPUMODRST_CPU1 ;
 int RAM_PHYSBASE ;
 int RAM_SIZE ;
 int RSTMGR_A10_MPUMODRST ;
 int RSTMGR_MPUMODRST ;
 int RSTMGR_PHYSBASE ;
 int RSTMGR_SIZE ;
 int SCU_CONTROL_ENABLE ;
 int SCU_CONTROL_REG ;
 int SCU_DIAG_CONTROL ;
 int SCU_DIAG_DISABLE_MIGBIT ;
 int SCU_INV_TAGS_REG ;
 int SCU_PHYSBASE ;
 int SCU_PHYSBASE_A10 ;
 int SCU_SIZE ;


 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int bus_space_write_region_4 (int ,int ,int ,int*,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 scalar_t__ mpentry ;
 char* mpentry_addr ;
 int panic (char*,...) ;
 scalar_t__ pmap_kextract (int ) ;
 int sev () ;
 int socfpga_trampoline ;

__attribute__((used)) static void
_socfpga_mp_start_ap(uint32_t platid)
{
 bus_space_handle_t scu, rst, ram;
 int reg;

 switch (platid) {
 default:
  panic("Unknown platform id %d\n", platid);
 }

 if (bus_space_map(fdtbus_bs_tag, RSTMGR_PHYSBASE,
     RSTMGR_SIZE, 0, &rst) != 0)
  panic("Couldn't map the reset manager (RSTMGR)\n");
 if (bus_space_map(fdtbus_bs_tag, RAM_PHYSBASE,
     RAM_SIZE, 0, &ram) != 0)
  panic("Couldn't map the first physram page\n");


 bus_space_write_4(fdtbus_bs_tag, scu,
  SCU_INV_TAGS_REG, 0x0000ffff);






 reg = bus_space_read_4(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL);
 reg |= (SCU_DIAG_DISABLE_MIGBIT);
 bus_space_write_4(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL, reg);


 switch (platid) {
 default:
  panic("Unknown platform id %d\n", platid);
 }


 reg = bus_space_read_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG);
 reg |= (SCU_CONTROL_ENABLE);
 bus_space_write_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG, reg);


 mpentry_addr = (char *)pmap_kextract((vm_offset_t)mpentry);
 bus_space_write_region_4(fdtbus_bs_tag, ram, 0,
     (uint32_t *)&socfpga_trampoline, 8);

 dcache_wbinv_poc_all();


 switch (platid) {
 default:
  panic("Unknown platform id %d\n", platid);
 }

 dsb();
 sev();

 bus_space_unmap(fdtbus_bs_tag, scu, SCU_SIZE);
 bus_space_unmap(fdtbus_bs_tag, rst, RSTMGR_SIZE);
 bus_space_unmap(fdtbus_bs_tag, ram, RAM_SIZE);
}
