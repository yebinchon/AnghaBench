
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int platform_t ;
typedef int bus_addr_t ;


 int CORE_CONFIG (int) ;
 int CORE_PWR_EN ;
 int CORE_STATUS (int) ;
 int DELAY (int) ;
 scalar_t__ EXYNOS5420_SOC_ID ;
 int EXYNOS5420_SYSRAM_NS ;
 int EXYNOS_PMU_BASE ;
 int EXYNOS_SYSRAM ;
 int bus_space_map (int ,int,int,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 scalar_t__ exynos_get_soc_id () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int printf (char*,int) ;
 int sev () ;

void
exynos5_mp_start_ap(platform_t plat)
{
 bus_addr_t sysram, pmu;
 int err, i, j;
 int status;
 int reg;

 err = bus_space_map(fdtbus_bs_tag, EXYNOS_PMU_BASE, 0x20000, 0, &pmu);
 if (err != 0)
  panic("Couldn't map pmu\n");

 if (exynos_get_soc_id() == EXYNOS5420_SOC_ID)
  reg = EXYNOS5420_SYSRAM_NS;
 else
  reg = EXYNOS_SYSRAM;

 err = bus_space_map(fdtbus_bs_tag, reg, 0x100, 0, &sysram);
 if (err != 0)
  panic("Couldn't map sysram\n");


 for (i = 1; i < mp_ncpus; i++) {
  bus_space_write_4(fdtbus_bs_tag, pmu, CORE_CONFIG(i),
      CORE_PWR_EN);

  for (j = 10; j >= 0; j--) {
   status = bus_space_read_4(fdtbus_bs_tag, pmu,
       CORE_STATUS(i));
   if ((status & CORE_PWR_EN) == CORE_PWR_EN)
    break;
   DELAY(10);
   if (j == 0)
    printf("Can't power on CPU%d\n", i);
  }
 }

 bus_space_write_4(fdtbus_bs_tag, sysram, 0x0,
     pmap_kextract((vm_offset_t)mpentry));

 dcache_wbinv_poc_all();

 dsb();
 sev();
 bus_space_unmap(fdtbus_bs_tag, sysram, 0x100);
 bus_space_unmap(fdtbus_bs_tag, pmu, 0x20000);
}
