
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct arm_tmr_softc* tc_priv; } ;
struct arm_tmr_softc {int dummy; } ;


 int GBL_TIMER_COUNT_LOW ;
 int tmr_gbl_read_4 (struct arm_tmr_softc*,int ) ;

__attribute__((used)) static unsigned
arm_tmr_get_timecount(struct timecounter *tc)
{
 struct arm_tmr_softc *sc;

 sc = tc->tc_priv;
 return (tmr_gbl_read_4(sc, GBL_TIMER_COUNT_LOW));
}
