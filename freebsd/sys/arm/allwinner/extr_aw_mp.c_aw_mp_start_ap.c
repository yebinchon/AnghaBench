
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int A20_CPU1_PWROFF_REG ;
 int A20_CPU1_PWR_CLAMP ;
 int A20_CPUCFG_BASE ;
 int ALLWINNERSOC_SUN7I ;
 int CPUCFG_BASE ;
 int CPUCFG_DBGCTL1 ;
 int CPUCFG_GENCTL ;
 int CPUCFG_P_REG0 ;
 int CPUCFG_SIZE ;
 int CPU_CORE_RESET ;
 int CPU_PWROFF ;
 int CPU_PWR_CLAMP (int) ;
 int CPU_PWR_CLAMP_STEPS ;
 int CPU_RESET ;
 int CPU_RST_CTL (int) ;
 int DELAY (int) ;
 int PRCM_BASE ;
 int PRCM_SIZE ;
 int allwinner_soc_family () ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int sev () ;

void
aw_mp_start_ap(platform_t plat)
{
 bus_space_handle_t cpucfg;
 bus_space_handle_t prcm;
 int i, j, soc_family;
 uint32_t val;

 soc_family = allwinner_soc_family();
 if (soc_family == ALLWINNERSOC_SUN7I) {
  if (bus_space_map(fdtbus_bs_tag, A20_CPUCFG_BASE, CPUCFG_SIZE,
      0, &cpucfg) != 0)
   panic("Couldn't map the CPUCFG\n");
 } else {
  if (bus_space_map(fdtbus_bs_tag, CPUCFG_BASE, CPUCFG_SIZE,
      0, &cpucfg) != 0)
   panic("Couldn't map the CPUCFG\n");
  if (bus_space_map(fdtbus_bs_tag, PRCM_BASE, PRCM_SIZE, 0,
      &prcm) != 0)
   panic("Couldn't map the PRCM\n");
 }

 dcache_wbinv_poc_all();

 bus_space_write_4(fdtbus_bs_tag, cpucfg, CPUCFG_P_REG0,
     pmap_kextract((vm_offset_t)mpentry));






 for (i = 1; i < mp_ncpus; i++)
  bus_space_write_4(fdtbus_bs_tag, cpucfg, CPU_RST_CTL(i), 0);


 val = bus_space_read_4(fdtbus_bs_tag, cpucfg, CPUCFG_GENCTL);
 for (i = 1; i < mp_ncpus; i++)
  val &= ~(1 << i);
 bus_space_write_4(fdtbus_bs_tag, cpucfg, CPUCFG_GENCTL, val);


 val = bus_space_read_4(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1);
 for (i = 1; i < mp_ncpus; i++)
  val &= ~(1 << i);
 bus_space_write_4(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1, val);


 for (i = 1; i < mp_ncpus; i++)
  for (j = 0; j <= CPU_PWR_CLAMP_STEPS; j++) {
   if (soc_family != ALLWINNERSOC_SUN7I) {
    bus_space_write_4(fdtbus_bs_tag, prcm,
        CPU_PWR_CLAMP(i), 0xff >> j);
   } else {
    bus_space_write_4(fdtbus_bs_tag,
        cpucfg, A20_CPU1_PWR_CLAMP, 0xff >> j);
   }
  }
 DELAY(10000);


 if (soc_family != ALLWINNERSOC_SUN7I) {
  val = bus_space_read_4(fdtbus_bs_tag, prcm, CPU_PWROFF);
  for (i = 0; i < mp_ncpus; i++)
   val &= ~(1 << i);
  bus_space_write_4(fdtbus_bs_tag, prcm, CPU_PWROFF, val);
 } else {
  val = bus_space_read_4(fdtbus_bs_tag,
      cpucfg, A20_CPU1_PWROFF_REG);
  val &= ~(1 << 0);
  bus_space_write_4(fdtbus_bs_tag, cpucfg,
      A20_CPU1_PWROFF_REG, val);
 }
 DELAY(1000);


 for (i = 1; i < mp_ncpus; i++)
  bus_space_write_4(fdtbus_bs_tag, cpucfg, CPU_RST_CTL(i),
      CPU_RESET | CPU_CORE_RESET);


 val = bus_space_read_4(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1);
 for (i = 1; i < mp_ncpus; i++)
  val |= (1 << i);
 bus_space_write_4(fdtbus_bs_tag, cpucfg, CPUCFG_DBGCTL1, val);

 dsb();
 sev();
 bus_space_unmap(fdtbus_bs_tag, cpucfg, CPUCFG_SIZE);
 if (soc_family != ALLWINNERSOC_SUN7I)
  bus_space_unmap(fdtbus_bs_tag, prcm, PRCM_SIZE);
}
