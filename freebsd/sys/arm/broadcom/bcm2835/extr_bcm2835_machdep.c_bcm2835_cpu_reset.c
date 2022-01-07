
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int bcmwd_watchdog_reset () ;

__attribute__((used)) static void
bcm2835_cpu_reset(platform_t plat)
{
 bcmwd_watchdog_reset();
}
