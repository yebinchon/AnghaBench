
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int et_arg; int (* et_event_cb ) (TYPE_3__*,int ) ;scalar_t__ et_active; } ;
struct mv_timer_softc {TYPE_3__ et; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {int bridge_irq_cause; int irq_timer0_clr; } ;


 int FILTER_HANDLED ;
 int read_cpu_ctrl (int ) ;
 int stub1 (TYPE_3__*,int ) ;
 TYPE_2__* timer_softc ;
 int write_cpu_ctrl (int ,int ) ;

__attribute__((used)) static int
mv_hardclock(void *arg)
{
 struct mv_timer_softc *sc;
 uint32_t irq_cause;

 irq_cause = read_cpu_ctrl(timer_softc->config->bridge_irq_cause);
 irq_cause &= timer_softc->config->irq_timer0_clr;
 write_cpu_ctrl(timer_softc->config->bridge_irq_cause, irq_cause);

 sc = (struct mv_timer_softc *)arg;
 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
