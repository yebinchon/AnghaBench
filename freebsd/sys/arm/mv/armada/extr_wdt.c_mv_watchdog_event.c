
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct mv_wdt_softc {int wdt_mtx; TYPE_1__* wdt_config; } ;
struct TYPE_6__ {TYPE_2__* wdt_config; } ;
struct TYPE_5__ {int (* wdt_enable ) () ;int wdt_timer; int (* wdt_disable ) () ;} ;
struct TYPE_4__ {unsigned int wdt_clock_src; } ;


 unsigned int MAX_WATCHDOG_TICKS ;
 unsigned int WD_INTERVAL ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mv_set_timer (int ,unsigned int) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 TYPE_3__* wdt_softc ;

__attribute__((used)) static void
mv_watchdog_event(void *arg, unsigned int cmd, int *error)
{
 struct mv_wdt_softc *sc;
 uint64_t ns;
 uint64_t ticks;

 sc = arg;
 mtx_lock(&sc->wdt_mtx);
 if (cmd == 0) {
  if (wdt_softc->wdt_config->wdt_disable != ((void*)0))
   wdt_softc->wdt_config->wdt_disable();
 } else {




  ns = (uint64_t)1 << (cmd & WD_INTERVAL);
  ticks = (uint64_t)(ns * sc->wdt_config->wdt_clock_src) / 1000000000;
  if (ticks > MAX_WATCHDOG_TICKS) {
   if (wdt_softc->wdt_config->wdt_disable != ((void*)0))
    wdt_softc->wdt_config->wdt_disable();
  }
  else {
   mv_set_timer(wdt_softc->wdt_config->wdt_timer, ticks);
   if (wdt_softc->wdt_config->wdt_enable != ((void*)0))
    wdt_softc->wdt_config->wdt_enable();
   *error = 0;
  }
 }
 mtx_unlock(&sc->wdt_mtx);
}
