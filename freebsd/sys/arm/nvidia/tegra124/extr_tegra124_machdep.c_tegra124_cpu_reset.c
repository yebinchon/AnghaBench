
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int PMC_CONTROL_REG ;
 int PMC_PHYSBASE ;
 int PMC_SCRATCH0 ;
 int PMC_SCRATCH0_MODE_BOOTLOADER ;
 int PMC_SCRATCH0_MODE_MASK ;
 int PMC_SIZE ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int printf (char*) ;
 int spinlock_enter () ;

__attribute__((used)) static void
tegra124_cpu_reset(platform_t plat)
{
 bus_space_handle_t pmc;
 uint32_t reg;

 printf("Resetting...\n");
 bus_space_map(fdtbus_bs_tag, PMC_PHYSBASE, PMC_SIZE, 0, &pmc);

 reg = bus_space_read_4(fdtbus_bs_tag, pmc, PMC_SCRATCH0);
 reg &= PMC_SCRATCH0_MODE_MASK;
 bus_space_write_4(fdtbus_bs_tag, pmc, PMC_SCRATCH0,
    reg | PMC_SCRATCH0_MODE_BOOTLOADER);
 bus_space_read_4(fdtbus_bs_tag, pmc, PMC_SCRATCH0);

 reg = bus_space_read_4(fdtbus_bs_tag, pmc, PMC_CONTROL_REG);
 spinlock_enter();
 dsb();
 bus_space_write_4(fdtbus_bs_tag, pmc, PMC_CONTROL_REG, reg | 0x10);
 bus_space_read_4(fdtbus_bs_tag, pmc, PMC_CONTROL_REG);
 while(1)
  ;

}
