
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MV_MISC_BASE ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int fdtbus_bs_tag ;

void
write_cpu_misc(uint32_t reg, uint32_t val)
{

 bus_space_write_4(fdtbus_bs_tag, MV_MISC_BASE, reg, val);
}
