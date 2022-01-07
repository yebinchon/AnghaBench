
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct arm_tmr_softc {TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 int PRV_TIMER_INTR ;
 int PRV_TIMER_INTR_EVENT ;
 int stub1 (TYPE_1__*,int ) ;
 int tmr_prv_write_4 (struct arm_tmr_softc*,int ,int ) ;

__attribute__((used)) static int
arm_tmr_intr(void *arg)
{
 struct arm_tmr_softc *sc;

 sc = arg;
 tmr_prv_write_4(sc, PRV_TIMER_INTR, PRV_TIMER_INTR_EVENT);
 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);
 return (FILTER_HANDLED);
}
