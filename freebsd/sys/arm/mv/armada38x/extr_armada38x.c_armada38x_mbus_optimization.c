
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 scalar_t__ MV_MBUS_CTRL_BASE ;
 int MV_MBUS_CTRL_REGS_LEN ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int fdtbus_bs_tag ;

int
armada38x_mbus_optimization(void)
{
 bus_space_handle_t vaddr_iowind;
 int rv;

 rv = bus_space_map(fdtbus_bs_tag, (bus_addr_t)MV_MBUS_CTRL_BASE,
     MV_MBUS_CTRL_REGS_LEN, 0, &vaddr_iowind);
 if (rv != 0)
  return (rv);






 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, 0, 0x19180);





 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, 0x4, 0x3000A);





 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, 0x8, 0xFFFF);





 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, 0xc, 0x303);

 bus_space_barrier(fdtbus_bs_tag, vaddr_iowind, 0, MV_MBUS_CTRL_REGS_LEN,
     BUS_SPACE_BARRIER_WRITE);

 bus_space_unmap(fdtbus_bs_tag, vaddr_iowind, MV_MBUS_CTRL_REGS_LEN);

 return (rv);
}
