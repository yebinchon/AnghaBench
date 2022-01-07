
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CNT64_RL_EN ;
 int OSC24M_CNT64_CTRL_REG ;
 int OSC24M_CNT64_HIGH_REG ;
 int OSC24M_CNT64_LOW_REG ;
 int a20_cpu_cfg_sc ;
 int cpu_cfg_read_4 (int ,int ) ;
 int cpu_cfg_write_4 (int ,int ,int) ;

uint64_t
a20_read_counter64(void)
{
 uint32_t lo, hi;


 cpu_cfg_write_4(a20_cpu_cfg_sc, OSC24M_CNT64_CTRL_REG, CNT64_RL_EN);
 while (cpu_cfg_read_4(a20_cpu_cfg_sc, OSC24M_CNT64_CTRL_REG) & CNT64_RL_EN)
  continue;

 hi = cpu_cfg_read_4(a20_cpu_cfg_sc, OSC24M_CNT64_HIGH_REG);
 lo = cpu_cfg_read_4(a20_cpu_cfg_sc, OSC24M_CNT64_LOW_REG);

 return (((uint64_t)hi << 32) | lo);
}
