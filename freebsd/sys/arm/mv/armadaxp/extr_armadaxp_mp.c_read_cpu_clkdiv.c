
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MV_AXP_CPU_DIVCLK_BASE ;
 int bus_space_read_4 (int ,int ,int ) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static uint32_t
read_cpu_clkdiv(uint32_t reg)
{

 return (bus_space_read_4(fdtbus_bs_tag, MV_AXP_CPU_DIVCLK_BASE, reg));
}
