
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct aw_wdog_softc {int wdog_mode_intvl_shift; int wdog_mode_en; int wdog_ctrl_key; int wdog_config_value; int mtx; scalar_t__ wdog_mode; int dev; scalar_t__ wdog_config; scalar_t__ wdog_ctrl; } ;
struct TYPE_2__ {int milliseconds; int value; } ;


 int WDOG_CTRL_RESTART ;
 int WD_INTERVAL ;
 int WRITE (struct aw_wdog_softc*,scalar_t__,int) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* wd_intervals ;

__attribute__((used)) static void
aw_wdog_watchdog_fn(void *private, u_int cmd, int *error)
{
 struct aw_wdog_softc *sc;
 uint64_t ms;
 int i;

 sc = private;
 mtx_lock(&sc->mtx);

 cmd &= WD_INTERVAL;

 if (cmd > 0) {
  ms = ((uint64_t)1 << (cmd & WD_INTERVAL)) / 1000000;
  i = 0;
  while (wd_intervals[i].milliseconds &&
      (ms > wd_intervals[i].milliseconds))
   i++;
  if (wd_intervals[i].milliseconds) {
   WRITE(sc, sc->wdog_mode,
     (wd_intervals[i].value << sc->wdog_mode_intvl_shift) |
       sc->wdog_mode_en);
   WRITE(sc, sc->wdog_ctrl,
       WDOG_CTRL_RESTART | sc->wdog_ctrl_key);
   if (sc->wdog_config)
    WRITE(sc, sc->wdog_config,
        sc->wdog_config_value);
   *error = 0;
  }
  else {




   device_printf(sc->dev,
       "Can't arm, timeout is more than 16 sec\n");
   mtx_unlock(&sc->mtx);
   WRITE(sc, sc->wdog_mode, 0);
   return;
  }
 }
 else
  WRITE(sc, sc->wdog_mode, 0);

 mtx_unlock(&sc->mtx);
}
