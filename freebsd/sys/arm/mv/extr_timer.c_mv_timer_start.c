
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ et_frequency; } ;
struct mv_timer_softc {TYPE_1__ et; } ;
struct eventtimer {scalar_t__ et_priv; } ;
typedef int sbintime_t ;


 int CPU_TIMER0_AUTO ;
 int CPU_TIMER0_EN ;
 int mv_get_timer_control () ;
 int mv_set_timer (int ,int) ;
 int mv_set_timer_control (int) ;
 int mv_set_timer_rel (int ,int) ;

__attribute__((used)) static int
mv_timer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct mv_timer_softc *sc;
 uint32_t val, val1;


 sc = (struct mv_timer_softc *)et->et_priv;
 if (period != 0)
  val = ((uint32_t)sc->et.et_frequency * period) >> 32;
 else
  val = 0;
 if (first != 0)
  val1 = ((uint32_t)sc->et.et_frequency * first) >> 32;
 else
  val1 = val;


 mv_set_timer_rel(0, val);
 mv_set_timer(0, val1);
 val = mv_get_timer_control();
 val |= CPU_TIMER0_EN;
 if (period != 0)
  val |= CPU_TIMER0_AUTO;
 else
  val &= ~CPU_TIMER0_AUTO;
 mv_set_timer_control(val);
 return (0);
}
