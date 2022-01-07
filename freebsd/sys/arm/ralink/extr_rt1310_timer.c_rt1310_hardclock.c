
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct rt1310_timer_softc {int lt_period; TYPE_1__ lt_et; int lt_oneshot; } ;


 int FILTER_HANDLED ;
 int RT_TIMER_CONTROL ;
 int RT_TIMER_CTRL_ENABLE ;
 int RT_TIMER_CTRL_INTCTL ;
 int RT_TIMER_LOAD ;
 int RT_TIMER_VALUE ;
 int stub1 (TYPE_1__*,int ) ;
 int timer2_read_4 (struct rt1310_timer_softc*,int ) ;
 int timer2_write_4 (struct rt1310_timer_softc*,int ,int) ;

__attribute__((used)) static int
rt1310_hardclock(void *arg)
{
 struct rt1310_timer_softc *sc = (struct rt1310_timer_softc *)arg;


 timer2_write_4(sc, RT_TIMER_CONTROL,
     timer2_read_4(sc, RT_TIMER_CONTROL) | 0x08);
 timer2_write_4(sc, RT_TIMER_CONTROL,
     timer2_read_4(sc, RT_TIMER_CONTROL) & 0x1fb);


 if (!sc->lt_oneshot) {
  timer2_write_4(sc, RT_TIMER_LOAD, sc->lt_period);
  timer2_write_4(sc, RT_TIMER_VALUE, sc->lt_period);
  timer2_write_4(sc, RT_TIMER_CONTROL,
   RT_TIMER_CTRL_ENABLE | RT_TIMER_CTRL_INTCTL);
 }

 if (sc->lt_et.et_active)
  sc->lt_et.et_event_cb(&sc->lt_et, sc->lt_et.et_arg);

 return (FILTER_HANDLED);
}
