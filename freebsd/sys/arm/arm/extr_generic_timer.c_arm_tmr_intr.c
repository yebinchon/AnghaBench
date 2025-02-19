
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct arm_tmr_softc {TYPE_1__ et; int physical; } ;


 int FILTER_HANDLED ;
 int GT_CTRL_INT_MASK ;
 int GT_CTRL_INT_STAT ;
 int get_ctrl (int ) ;
 int set_ctrl (int,int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
arm_tmr_intr(void *arg)
{
 struct arm_tmr_softc *sc;
 int ctrl;

 sc = (struct arm_tmr_softc *)arg;
 ctrl = get_ctrl(sc->physical);
 if (ctrl & GT_CTRL_INT_STAT) {
  ctrl |= GT_CTRL_INT_MASK;
  set_ctrl(ctrl, sc->physical);
 }

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
