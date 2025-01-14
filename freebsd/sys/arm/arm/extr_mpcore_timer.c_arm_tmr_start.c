
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {int et_frequency; struct arm_tmr_softc* et_priv; } ;
struct arm_tmr_softc {int dummy; } ;
typedef int sbintime_t ;


 int PRV_TIMER_COUNT ;
 int PRV_TIMER_CTRL ;
 int PRV_TIMER_CTRL_AUTO_RELOAD ;
 int PRV_TIMER_CTRL_IRQ_ENABLE ;
 int PRV_TIMER_CTRL_TIMER_ENABLE ;
 int PRV_TIMER_INTR ;
 int PRV_TIMER_INTR_EVENT ;
 int PRV_TIMER_LOAD ;
 int tmr_prv_write_4 (struct arm_tmr_softc*,int ,int) ;

__attribute__((used)) static int
arm_tmr_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct arm_tmr_softc *sc;
 uint32_t load, count;
 uint32_t ctrl;

 sc = et->et_priv;
 tmr_prv_write_4(sc, PRV_TIMER_CTRL, 0);
 tmr_prv_write_4(sc, PRV_TIMER_INTR, PRV_TIMER_INTR_EVENT);

 ctrl = PRV_TIMER_CTRL_IRQ_ENABLE | PRV_TIMER_CTRL_TIMER_ENABLE;

 if (period != 0) {
  load = ((uint32_t)et->et_frequency * period) >> 32;
  ctrl |= PRV_TIMER_CTRL_AUTO_RELOAD;
 } else
  load = 0;

 if (first != 0)
  count = (uint32_t)((et->et_frequency * first) >> 32);
 else
  count = load;

 tmr_prv_write_4(sc, PRV_TIMER_LOAD, load);
 tmr_prv_write_4(sc, PRV_TIMER_COUNT, count);
 tmr_prv_write_4(sc, PRV_TIMER_CTRL, ctrl);

 return (0);
}
