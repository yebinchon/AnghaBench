
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct a10_timer_softc {scalar_t__ sc_period; TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 int TIMER_CTRL_AUTORELOAD ;
 int TIMER_CTRL_REG (int ) ;
 int TIMER_CTRL_START ;
 int TIMER_CURV_REG (int ) ;
 int TIMER_IRQ_PENDING (int ) ;
 int TIMER_IRQ_STA_REG ;
 int stub1 (TYPE_1__*,int ) ;
 int timer_read_4 (struct a10_timer_softc*,int ) ;
 int timer_write_4 (struct a10_timer_softc*,int ,int) ;

__attribute__((used)) static int
a10_timer_irq(void *arg)
{
 struct a10_timer_softc *sc;
 uint32_t val;

 sc = (struct a10_timer_softc *)arg;


 timer_write_4(sc, TIMER_IRQ_STA_REG, TIMER_IRQ_PENDING(0));

 val = timer_read_4(sc, TIMER_CTRL_REG(0));







 if ((val & (1<<1)) == 0 && sc->sc_period > 0) {

  timer_write_4(sc, TIMER_CURV_REG(0), sc->sc_period);


  val |= TIMER_CTRL_AUTORELOAD | TIMER_CTRL_START;
  timer_write_4(sc, TIMER_CTRL_REG(0), val);
 }

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
