
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wdog_mode_intvl_shift; int wdog_mode_en; int wdog_config_value; int wdog_ctrl_key; scalar_t__ wdog_ctrl; scalar_t__ wdog_config; scalar_t__ wdog_mode; } ;
struct TYPE_4__ {int value; } ;


 int WDOG_CTRL_RESTART ;
 int WRITE (TYPE_2__*,scalar_t__,int) ;
 TYPE_2__* aw_wdog_sc ;
 int printf (char*) ;
 TYPE_1__* wd_intervals ;

void
aw_wdog_watchdog_reset(void)
{

 if (aw_wdog_sc == ((void*)0)) {
  printf("Reset: watchdog device has not been initialized\n");
  return;
 }

 WRITE(aw_wdog_sc, aw_wdog_sc->wdog_mode,
     (wd_intervals[0].value << aw_wdog_sc->wdog_mode_intvl_shift) |
     aw_wdog_sc->wdog_mode_en);
 if (aw_wdog_sc->wdog_config)
  WRITE(aw_wdog_sc, aw_wdog_sc->wdog_config,
        aw_wdog_sc->wdog_config_value);
 WRITE(aw_wdog_sc, aw_wdog_sc->wdog_ctrl,
     WDOG_CTRL_RESTART | aw_wdog_sc->wdog_ctrl_key);
 while(1)
  ;

}
