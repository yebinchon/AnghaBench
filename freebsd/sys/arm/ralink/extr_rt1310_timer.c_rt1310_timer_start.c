
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt1310_timer_softc {int lt_oneshot; int lt_period; } ;
struct eventtimer {scalar_t__ et_frequency; scalar_t__ et_priv; } ;
typedef int sbintime_t ;


 int RT_TIMER_CONTROL ;
 int RT_TIMER_CTRL_ENABLE ;
 int RT_TIMER_CTRL_INTCTL ;
 int RT_TIMER_LOAD ;
 int RT_TIMER_VALUE ;
 int timer2_write_4 (struct rt1310_timer_softc*,int ,int) ;

__attribute__((used)) static int
rt1310_timer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct rt1310_timer_softc *sc = (struct rt1310_timer_softc *)et->et_priv;
 uint32_t ticks;

 if (period == 0) {
  sc->lt_oneshot = 1;
  sc->lt_period = 0;
 } else {
  sc->lt_oneshot = 0;
  sc->lt_period = ((uint32_t)et->et_frequency * period) >> 32;
 }

 if (first == 0)
  ticks = sc->lt_period;
 else
  ticks = ((uint32_t)et->et_frequency * first) >> 32;


 timer2_write_4(sc, RT_TIMER_CONTROL, 0);


 timer2_write_4(sc, RT_TIMER_LOAD, ticks);
 timer2_write_4(sc, RT_TIMER_VALUE, ticks);
 timer2_write_4(sc, RT_TIMER_CONTROL,
  RT_TIMER_CTRL_ENABLE | RT_TIMER_CTRL_INTCTL);

 return (0);
}
