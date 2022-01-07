
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 int IO_WIN_9_BASE_OFFSET ;
 int IO_WIN_9_CTRL_OFFSET ;
 int IO_WIN_ATTR_MASK ;
 int IO_WIN_ATTR_SHIFT ;
 int IO_WIN_ENA_MASK ;
 int IO_WIN_ENA_SHIFT ;
 int IO_WIN_SIZE_MASK ;
 int IO_WIN_SIZE_SHIFT ;
 int IO_WIN_SYNC_MASK ;
 int IO_WIN_SYNC_SHIFT ;
 int IO_WIN_TGT_MASK ;
 int IO_WIN_TGT_SHIFT ;
 int MBUS_BOOTROM_ATTR ;
 int MBUS_BOOTROM_TGT_ID ;
 int MV_BOOTROM_MEM_ADDR ;
 int MV_BOOTROM_WIN_SIZE ;
 int MV_CPU_SUBSYS_REGS_LEN ;
 scalar_t__ MV_MBUS_BRIDGE_BASE ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;

int
armada38x_open_bootrom_win(void)
{
 bus_space_handle_t vaddr_iowind;
 uint32_t val;
 int rv;

 rv = bus_space_map(fdtbus_bs_tag, (bus_addr_t)MV_MBUS_BRIDGE_BASE,
     MV_CPU_SUBSYS_REGS_LEN, 0, &vaddr_iowind);
 if (rv != 0)
  return (rv);

 val = (MV_BOOTROM_WIN_SIZE & IO_WIN_SIZE_MASK) << IO_WIN_SIZE_SHIFT;
 val |= (MBUS_BOOTROM_ATTR & IO_WIN_ATTR_MASK) << IO_WIN_ATTR_SHIFT;
 val |= (MBUS_BOOTROM_TGT_ID & IO_WIN_TGT_MASK) << IO_WIN_TGT_SHIFT;

 val |= (0x1 & IO_WIN_SYNC_MASK) << IO_WIN_SYNC_SHIFT;
 val |= (0x1 & IO_WIN_ENA_MASK) << IO_WIN_ENA_SHIFT;


 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, IO_WIN_9_CTRL_OFFSET,
     val);

 bus_space_write_4(fdtbus_bs_tag, vaddr_iowind, IO_WIN_9_BASE_OFFSET,
     MV_BOOTROM_MEM_ADDR);

 bus_space_barrier(fdtbus_bs_tag, vaddr_iowind, 0, MV_CPU_SUBSYS_REGS_LEN,
     BUS_SPACE_BARRIER_WRITE);
 bus_space_unmap(fdtbus_bs_tag, vaddr_iowind, MV_CPU_SUBSYS_REGS_LEN);

 return (rv);
}
