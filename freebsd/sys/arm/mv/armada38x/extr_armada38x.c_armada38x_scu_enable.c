
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 scalar_t__ MV_SCU_BASE ;
 int MV_SCU_ENABLE ;
 int MV_SCU_REGS_LEN ;
 int MV_SCU_REG_CTRL ;
 int MV_SCU_SL_L2_ENABLE ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;

int
armada38x_scu_enable(void)
{
 bus_space_handle_t vaddr_scu;
 int rv;
 uint32_t val;

 rv = bus_space_map(fdtbus_bs_tag, (bus_addr_t)MV_SCU_BASE,
     MV_SCU_REGS_LEN, 0, &vaddr_scu);
 if (rv != 0)
  return (rv);


 val = bus_space_read_4(fdtbus_bs_tag, vaddr_scu, MV_SCU_REG_CTRL);
 if (!(val & MV_SCU_ENABLE)) {

  val |= MV_SCU_SL_L2_ENABLE;

  bus_space_write_4(fdtbus_bs_tag, vaddr_scu, 0,
      val | MV_SCU_ENABLE);
 }

 bus_space_unmap(fdtbus_bs_tag, vaddr_scu, MV_SCU_REGS_LEN);
 return (0);
}
