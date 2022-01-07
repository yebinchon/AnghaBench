
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int aw_wdog_watchdog_reset () ;
 int printf (char*) ;

__attribute__((used)) static void
allwinner_cpu_reset(platform_t plat)
{
 aw_wdog_watchdog_reset();
 printf("Reset failed!\n");
 while (1);
}
