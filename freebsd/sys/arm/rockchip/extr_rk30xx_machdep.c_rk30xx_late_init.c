
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int CPU_CONTROL_DC_ENABLE ;
 int CPU_CONTROL_IC_ENABLE ;
 int cpufunc_control (int,int) ;

__attribute__((used)) static void
rk30xx_late_init(platform_t plat)
{


 cpufunc_control(CPU_CONTROL_DC_ENABLE|CPU_CONTROL_IC_ENABLE,
     CPU_CONTROL_DC_ENABLE|CPU_CONTROL_IC_ENABLE);
}
