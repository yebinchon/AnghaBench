
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int IMEM_PHYSBASE ;
 int IMEM_SIZE ;
 int PMU_PHYSBASE ;
 int PMU_PWRDN_CON ;
 int PMU_PWRDN_SCU ;
 int PMU_SIZE ;
 int SCU_CONTROL_ENABLE ;
 int SCU_CONTROL_REG ;
 int SCU_INV_TAGS_REG ;
 int SCU_PHYSBASE ;
 int SCU_SIZE ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int bus_space_write_region_4 (int ,int ,int ,int*,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 char* mpentry_addr ;
 int panic (char*) ;
 scalar_t__ pmap_kextract (int ) ;
 int rk30xx_boot2 ;
 int sev () ;

void
rk30xx_mp_start_ap(platform_t plat)
{
 bus_space_handle_t scu;
 bus_space_handle_t imem;
 bus_space_handle_t pmu;
 uint32_t val;
 int i;

 if (bus_space_map(fdtbus_bs_tag, SCU_PHYSBASE, SCU_SIZE, 0, &scu) != 0)
  panic("Could not map the SCU");
 if (bus_space_map(fdtbus_bs_tag, IMEM_PHYSBASE,
     IMEM_SIZE, 0, &imem) != 0)
  panic("Could not map the IMEM");
 if (bus_space_map(fdtbus_bs_tag, PMU_PHYSBASE, PMU_SIZE, 0, &pmu) != 0)
  panic("Could not map the PMU");






 bus_space_write_4(fdtbus_bs_tag, scu, SCU_INV_TAGS_REG, 0x0000ffff);


 val = bus_space_read_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON);
 for (i = 1; i < mp_ncpus; i++)
  val |= 1 << i;
 bus_space_write_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON, val);


 val = bus_space_read_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON);
 val &= ~PMU_PWRDN_SCU;
 bus_space_write_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON, val);


 val = bus_space_read_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG);
 bus_space_write_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG,
     val | SCU_CONTROL_ENABLE);
 mpentry_addr = (char *)pmap_kextract((vm_offset_t)mpentry);


 bus_space_write_region_4(fdtbus_bs_tag, imem, 0,
     (uint32_t *)&rk30xx_boot2, 8);

 dcache_wbinv_poc_all();


 val = bus_space_read_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON);
 for (i = 1; i < mp_ncpus; i++)
  val &= ~(1 << i);
 bus_space_write_4(fdtbus_bs_tag, pmu, PMU_PWRDN_CON, val);

 dsb();
 sev();

 bus_space_unmap(fdtbus_bs_tag, scu, SCU_SIZE);
 bus_space_unmap(fdtbus_bs_tag, imem, IMEM_SIZE);
 bus_space_unmap(fdtbus_bs_tag, pmu, PMU_SIZE);
}
