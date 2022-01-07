
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 int CPU_RESET_ASSERT ;
 int CPU_RESET_OFFSET (int) ;
 scalar_t__ MV_CPU_RESET_BASE ;
 int MV_CPU_RESET_REGS_LEN ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static int
cpu_reset_deassert(void)
{
 bus_space_handle_t vaddr;
 uint32_t reg;
 int rv;

 rv = bus_space_map(fdtbus_bs_tag, (bus_addr_t)MV_CPU_RESET_BASE,
     MV_CPU_RESET_REGS_LEN, 0, &vaddr);
 if (rv != 0)
  return (rv);


 reg = bus_space_read_4(fdtbus_bs_tag, vaddr, CPU_RESET_OFFSET(1));
 reg &= ~CPU_RESET_ASSERT;

 bus_space_write_4(fdtbus_bs_tag, vaddr, CPU_RESET_OFFSET(1), reg);

 bus_space_unmap(fdtbus_bs_tag, vaddr, MV_CPU_RESET_REGS_LEN);

 return (0);
}
