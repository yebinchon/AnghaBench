
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct aml8726_timer_softc {scalar_t__ first_ticks; scalar_t__ period_ticks; TYPE_1__ et; } ;


 int AML_TIMER_A_EN ;
 int AML_TIMER_A_PERIODIC ;
 int AML_TIMER_A_REG ;
 int AML_TIMER_LOCK (struct aml8726_timer_softc*) ;
 int AML_TIMER_MUX_REG ;
 int AML_TIMER_UNLOCK (struct aml8726_timer_softc*) ;
 int CSR_READ_4 (struct aml8726_timer_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_timer_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
aml8726_hardclock(void *arg)
{
 struct aml8726_timer_softc *sc = (struct aml8726_timer_softc *)arg;

 AML_TIMER_LOCK(sc);

 if (sc->first_ticks != 0 && sc->period_ticks != 0) {
  sc->first_ticks = 0;

  CSR_WRITE_4(sc, AML_TIMER_A_REG, sc->period_ticks);
  CSR_WRITE_4(sc, AML_TIMER_MUX_REG,
      (CSR_READ_4(sc, AML_TIMER_MUX_REG) |
      AML_TIMER_A_PERIODIC | AML_TIMER_A_EN));
 }

 AML_TIMER_UNLOCK(sc);

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
