
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct TYPE_4__ {int timer_mtx; TYPE_1__* config; } ;
struct TYPE_3__ {unsigned int clock_src; int (* watchdog_enable ) () ;int (* watchdog_disable ) () ;} ;


 unsigned int MAX_WATCHDOG_TICKS ;
 int WATCHDOG_TIMER_ARMV5 ;
 unsigned int WD_INTERVAL ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mv_set_timer (int ,unsigned int) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 TYPE_2__* timer_softc ;

__attribute__((used)) static void
mv_watchdog_event(void *arg, unsigned int cmd, int *error)
{
 uint64_t ns;
 uint64_t ticks;

 mtx_lock(&timer_softc->timer_mtx);
 if (cmd == 0) {
  if (timer_softc->config->watchdog_disable != ((void*)0))
   timer_softc->config->watchdog_disable();
 } else {




  ns = (uint64_t)1 << (cmd & WD_INTERVAL);
  ticks = (uint64_t)(ns * timer_softc->config->clock_src) / 1000000000;
  if (ticks > MAX_WATCHDOG_TICKS) {
   if (timer_softc->config->watchdog_disable != ((void*)0))
    timer_softc->config->watchdog_disable();
  } else {
   mv_set_timer(WATCHDOG_TIMER_ARMV5, ticks);
   if (timer_softc->config->watchdog_enable != ((void*)0))
    timer_softc->config->watchdog_enable();
   *error = 0;
  }
 }
 mtx_unlock(&timer_softc->timer_mtx);
}
