
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int PCM_PWRGATE_TOGGLE_START ;
 int PMC_PHYSBASE ;
 int PMC_PWRGATE_STATUS ;
 int PMC_PWRGATE_TOGGLE ;
 int PMC_SIZE ;
 int TEGRA_EXCEPTION_VECTORS_BASE ;
 int TEGRA_EXCEPTION_VECTORS_SIZE ;
 int TEGRA_EXCEPTION_VECTOR_ENTRY ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int sev () ;

void
tegra124_mp_start_ap(platform_t plat)
{
 bus_space_handle_t pmc;
 bus_space_handle_t exvec;
 int i;
 uint32_t val;
 uint32_t mask;

 if (bus_space_map(fdtbus_bs_tag, PMC_PHYSBASE, PMC_SIZE, 0, &pmc) != 0)
  panic("Couldn't map the PMC\n");
 if (bus_space_map(fdtbus_bs_tag, TEGRA_EXCEPTION_VECTORS_BASE,
     TEGRA_EXCEPTION_VECTORS_SIZE, 0, &exvec) != 0)
  panic("Couldn't map the exception vectors\n");

 bus_space_write_4(fdtbus_bs_tag, exvec , TEGRA_EXCEPTION_VECTOR_ENTRY,
     pmap_kextract((vm_offset_t)mpentry));
 bus_space_read_4(fdtbus_bs_tag, exvec , TEGRA_EXCEPTION_VECTOR_ENTRY);



 do {
  val = bus_space_read_4(fdtbus_bs_tag, pmc,
      PMC_PWRGATE_TOGGLE);
 } while ((val & PCM_PWRGATE_TOGGLE_START) != 0);

 for (i = 1; i < mp_ncpus; i++) {
  val = bus_space_read_4(fdtbus_bs_tag, pmc, PMC_PWRGATE_STATUS);
  mask = 1 << (i + 8);
  if ((val & mask) == 0) {

   do {
    val = bus_space_read_4(fdtbus_bs_tag, pmc,
    PMC_PWRGATE_TOGGLE);
   } while ((val & PCM_PWRGATE_TOGGLE_START) != 0);
   bus_space_write_4(fdtbus_bs_tag, pmc,
       PMC_PWRGATE_TOGGLE,
       PCM_PWRGATE_TOGGLE_START | (8 + i));


   do {
    val = bus_space_read_4(fdtbus_bs_tag, pmc,
        PMC_PWRGATE_STATUS);
   } while ((val & mask) == 0);
  }

 }
 dsb();
 sev();
 bus_space_unmap(fdtbus_bs_tag, pmc, PMC_SIZE);
 bus_space_unmap(fdtbus_bs_tag, exvec, TEGRA_EXCEPTION_VECTORS_SIZE);
}
