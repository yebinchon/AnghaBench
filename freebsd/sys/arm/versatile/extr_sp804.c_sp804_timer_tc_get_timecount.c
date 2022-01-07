
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct sp804_timer_softc* tc_priv; } ;
struct sp804_timer_softc {int dummy; } ;


 int SP804_TIMER1_VALUE ;
 int sp804_timer_tc_read_4 (int ) ;

__attribute__((used)) static unsigned
sp804_timer_tc_get_timecount(struct timecounter *tc)
{
 struct sp804_timer_softc *sc = tc->tc_priv;
 return 0xffffffff - sp804_timer_tc_read_4(SP804_TIMER1_VALUE);
}
