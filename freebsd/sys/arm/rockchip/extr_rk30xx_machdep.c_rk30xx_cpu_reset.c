
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int printf (char*) ;
 int rk30_wd_watchdog_reset () ;

__attribute__((used)) static void
rk30xx_cpu_reset(platform_t plat)
{

 rk30_wd_watchdog_reset();
 printf("Reset failed!\n");
 while (1);
}
