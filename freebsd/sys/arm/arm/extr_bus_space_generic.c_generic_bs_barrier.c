
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 int cpu_l2cache_drain_writebuf () ;
 int dsb () ;

void
generic_bs_barrier(bus_space_tag_t t, bus_space_handle_t bsh, bus_size_t offset,
    bus_size_t len, int flags)
{
 dsb();
 if (flags & BUS_SPACE_BARRIER_WRITE) {
  cpu_l2cache_drain_writebuf();
 }
}
