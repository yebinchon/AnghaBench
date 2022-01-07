
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CPU_PM_CTRL ;
 scalar_t__ CPU_PM_CTRL_NONE ;
 int write_cpu_ctrl (int ,scalar_t__) ;

void
soc_power_ctrl_set(uint32_t mask)
{


 if (mask != CPU_PM_CTRL_NONE)
  write_cpu_ctrl(CPU_PM_CTRL, mask);

}
