
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MV_COHERENCY_FABRIC_BASE ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static void
write_coher_fabric(uint32_t reg, uint32_t val)
{

 bus_space_write_4(fdtbus_bs_tag, MV_COHERENCY_FABRIC_BASE, reg, val);
}
