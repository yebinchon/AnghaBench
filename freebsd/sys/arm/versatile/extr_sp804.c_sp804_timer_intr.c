
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct sp804_timer_softc {TYPE_1__ et; scalar_t__ et_enabled; } ;


 int FILTER_HANDLED ;
 int SP804_TIMER1_VALUE ;
 int SP804_TIMER2_INTCLR ;
 int sp804_timer_tc_read_4 (int ) ;
 int sp804_timer_tc_write_4 (int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
sp804_timer_intr(void *arg)
{
 struct sp804_timer_softc *sc = arg;
 static uint32_t prev = 0;
 uint32_t x = 0;

 x = sp804_timer_tc_read_4(SP804_TIMER1_VALUE);

 prev =x ;
 sp804_timer_tc_write_4(SP804_TIMER2_INTCLR, 1);
 if (sc->et_enabled) {
  if (sc->et.et_active) {
   sc->et.et_event_cb(&sc->et, sc->et.et_arg);
  }
 }

 return (FILTER_HANDLED);
}
