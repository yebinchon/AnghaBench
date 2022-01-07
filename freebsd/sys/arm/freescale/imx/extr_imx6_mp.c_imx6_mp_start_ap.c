
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int platform_t ;
typedef int bus_space_handle_t ;


 int SCU_CONTROL_ENABLE ;
 scalar_t__ SCU_CONTROL_REG ;
 scalar_t__ SCU_DIAG_CONTROL ;
 int SCU_DIAG_DISABLE_MIGBIT ;
 scalar_t__ SCU_INV_TAGS_REG ;
 int SCU_PHYSBASE ;
 int SCU_SIZE ;
 int SRC_CONTROL_C1ENA_SHIFT ;
 int SRC_CONTROL_C1RST_SHIFT ;
 scalar_t__ SRC_CONTROL_REG ;
 scalar_t__ SRC_GPR0_C1FUNC ;
 scalar_t__ SRC_GPR1_C1ARG ;
 int SRC_PHYSBASE ;
 int SRC_SIZE ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,scalar_t__,int) ;
 int dcache_wbinv_poc_all () ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int mp_ncpus ;
 scalar_t__ mpentry ;
 int panic (char*) ;
 int pmap_kextract (int ) ;
 int sev () ;

void
imx6_mp_start_ap(platform_t plat)
{
 bus_space_handle_t scu;
 bus_space_handle_t src;

 uint32_t val;
 int i;

 if (bus_space_map(fdtbus_bs_tag, SCU_PHYSBASE, SCU_SIZE, 0, &scu) != 0)
  panic("Couldn't map the SCU\n");
 if (bus_space_map(fdtbus_bs_tag, SRC_PHYSBASE, SRC_SIZE, 0, &src) != 0)
  panic("Couldn't map the system reset controller (SRC)\n");






 bus_space_write_4(fdtbus_bs_tag, scu, SCU_INV_TAGS_REG, 0x0000ffff);






 val = bus_space_read_4(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL);
 bus_space_write_4(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL,
     val | SCU_DIAG_DISABLE_MIGBIT);
 val = bus_space_read_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG);
 bus_space_write_4(fdtbus_bs_tag, scu, SCU_CONTROL_REG,
     val | SCU_CONTROL_ENABLE);
 dcache_wbinv_poc_all();





 val = bus_space_read_4(fdtbus_bs_tag, src, SRC_CONTROL_REG);
 for (i=1; i < mp_ncpus; i++) {
  bus_space_write_4(fdtbus_bs_tag, src, SRC_GPR0_C1FUNC + 8*i,
      pmap_kextract((vm_offset_t)mpentry));
  bus_space_write_4(fdtbus_bs_tag, src, SRC_GPR1_C1ARG + 8*i, 0);

  val |= ((1 << (SRC_CONTROL_C1ENA_SHIFT - 1 + i )) |
      ( 1 << (SRC_CONTROL_C1RST_SHIFT - 1 + i)));

 }
 bus_space_write_4(fdtbus_bs_tag, src, SRC_CONTROL_REG, val);

 dsb();
 sev();

 bus_space_unmap(fdtbus_bs_tag, scu, SCU_SIZE);
 bus_space_unmap(fdtbus_bs_tag, src, SRC_SIZE);
}
