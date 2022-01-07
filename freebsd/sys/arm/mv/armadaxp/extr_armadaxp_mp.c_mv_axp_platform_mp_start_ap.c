
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;


 int CPU_DIVCLK_CTRL0 ;
 int CPU_DIVCLK_CTRL2_RATIO_FULL0 ;
 int CPU_DIVCLK_CTRL2_RATIO_FULL1 ;
 int CPU_DIVCLK_MASK (int) ;
 int CPU_ID_CPU_MASK ;
 int CPU_ID_MV88SV584X_V7 ;
 scalar_t__ CPU_PMU (int) ;
 scalar_t__ CPU_PMU_BOOT ;
 scalar_t__ CPU_RESUME_CONTROL ;
 int DELAY (int) ;
 scalar_t__ MP ;
 scalar_t__ MP_SW_RESET (int) ;
 scalar_t__ MV_BASE ;
 int PAGE_SIZE ;
 int armadaxp_init_coher_fabric () ;
 int bus_space_write_4 (int ,scalar_t__,scalar_t__,int ) ;
 int cp15_midr_get () ;
 int dcache_wbinv_poc_all () ;
 scalar_t__ fdt_immr_pa ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 scalar_t__ mptramp ;
 scalar_t__ mptramp_end ;
 scalar_t__ mptramp_pmu_boot ;
 int pmap_kextract (scalar_t__) ;
 int* pmap_mapdev (int,int ) ;
 int pmap_unmapdev (scalar_t__,int ) ;
 int read_cpu_clkdiv (int ) ;
 int wmb () ;
 int write_cpu_clkdiv (int ,int) ;

void
mv_axp_platform_mp_start_ap(platform_t plat)
{
 uint32_t reg, *src, *dst, cpu_num, div_val, cputype;
 vm_offset_t pmu_boot_off;




 cputype = cp15_midr_get();
 cputype &= CPU_ID_CPU_MASK;





 pmu_boot_off = (CPU_PMU(0) - MV_BASE) + CPU_PMU_BOOT;
 mptramp_pmu_boot = fdt_immr_pa + pmu_boot_off;
 dst = pmap_mapdev(0xffff0000, PAGE_SIZE);
 for (src = (uint32_t *)mptramp; src < (uint32_t *)mptramp_end;
     src++, dst++) {
  *dst = *src;
 }
 pmap_unmapdev((vm_offset_t)dst, PAGE_SIZE);
 if (cputype == CPU_ID_MV88SV584X_V7) {

  div_val = read_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL1);
  div_val &= 0x3f;

  for (cpu_num = 1; cpu_num < mp_ncpus; cpu_num++ ) {
   reg = read_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL1);
   reg &= CPU_DIVCLK_MASK(cpu_num);
   reg |= div_val << (cpu_num * 8);
   write_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL1, reg);
  }
 } else {

  div_val = 0x01;

  if (mp_ncpus > 1) {
   reg = read_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL0);
   reg &= CPU_DIVCLK_MASK(3);
   reg |= div_val << 24;
   write_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL0, reg);
  }

  for (cpu_num = 2; cpu_num < mp_ncpus; cpu_num++ ) {
   reg = read_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL1);
   reg &= CPU_DIVCLK_MASK(cpu_num);
   reg |= div_val << (cpu_num * 8);
   write_cpu_clkdiv(CPU_DIVCLK_CTRL2_RATIO_FULL1, reg);
  }
 }

 reg = read_cpu_clkdiv(CPU_DIVCLK_CTRL0);
 reg |= ((0x1 << (mp_ncpus - 1)) - 1) << 21;
 write_cpu_clkdiv(CPU_DIVCLK_CTRL0, reg);
 reg = read_cpu_clkdiv(CPU_DIVCLK_CTRL0);
 reg |= 0x01000000;
 write_cpu_clkdiv(CPU_DIVCLK_CTRL0, reg);

 DELAY(100);
 reg &= ~(0xf << 21);
 write_cpu_clkdiv(CPU_DIVCLK_CTRL0, reg);
 DELAY(100);

 bus_space_write_4(fdtbus_bs_tag, MV_BASE, CPU_RESUME_CONTROL, 0);

 for (cpu_num = 1; cpu_num < mp_ncpus; cpu_num++ )
  bus_space_write_4(fdtbus_bs_tag, CPU_PMU(cpu_num), CPU_PMU_BOOT,
      pmap_kextract((vm_offset_t)mpentry));

 dcache_wbinv_poc_all();

 for (cpu_num = 1; cpu_num < mp_ncpus; cpu_num++ )
  bus_space_write_4(fdtbus_bs_tag, MP, MP_SW_RESET(cpu_num), 0);


 wmb();
 DELAY(10);

 armadaxp_init_coher_fabric();
}
