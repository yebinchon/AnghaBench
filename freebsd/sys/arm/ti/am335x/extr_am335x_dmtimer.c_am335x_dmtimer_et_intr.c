
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int et_arg; int (* et_event_cb ) (TYPE_2__*,int ) ;scalar_t__ et_active; } ;
struct TYPE_3__ {TYPE_2__ et; } ;
struct am335x_dmtimer_softc {TYPE_1__ func; } ;


 int DMTIMER_WRITE4 (struct am335x_dmtimer_softc*,int ,int ) ;
 int DMT_IRQSTATUS ;
 int DMT_IRQ_OVF ;
 int FILTER_HANDLED ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int
am335x_dmtimer_et_intr(void *arg)
{
 struct am335x_dmtimer_softc *sc;

 sc = arg;


 DMTIMER_WRITE4(sc, DMT_IRQSTATUS, DMT_IRQ_OVF);
 if (sc->func.et.et_active)
  sc->func.et.et_event_cb(&sc->func.et, sc->func.et.et_arg);

 return (FILTER_HANDLED);
}
