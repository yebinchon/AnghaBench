
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_HALT ;
 int RB_POWEROFF ;
 int aw_wdog_watchdog_reset () ;

__attribute__((used)) static void
aw_wdog_shutdown_fn(void *private, int howto)
{
 if ((howto & (RB_POWEROFF|RB_HALT)) == 0)
  aw_wdog_watchdog_reset();
}
