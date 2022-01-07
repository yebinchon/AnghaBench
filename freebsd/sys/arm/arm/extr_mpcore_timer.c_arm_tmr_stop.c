
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {struct arm_tmr_softc* et_priv; } ;
struct arm_tmr_softc {int dummy; } ;


 int PRV_TIMER_CTRL ;
 int PRV_TIMER_INTR ;
 int PRV_TIMER_INTR_EVENT ;
 int tmr_prv_write_4 (struct arm_tmr_softc*,int ,int ) ;

__attribute__((used)) static int
arm_tmr_stop(struct eventtimer *et)
{
 struct arm_tmr_softc *sc;

 sc = et->et_priv;
 tmr_prv_write_4(sc, PRV_TIMER_CTRL, 0);
 tmr_prv_write_4(sc, PRV_TIMER_INTR, PRV_TIMER_INTR_EVENT);
 return (0);
}
