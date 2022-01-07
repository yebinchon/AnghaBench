
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct epit_softc {TYPE_1__ et; int ctlreg; scalar_t__ oneshot; } ;


 int EPIT_CR ;
 int EPIT_SR ;
 int EPIT_SR_OCIF ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int RD4 (struct epit_softc*,int ) ;
 int WR4 (struct epit_softc*,int ,int ) ;
 int WR4B (struct epit_softc*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
epit_intr(void *arg)
{
 struct epit_softc *sc;
 uint32_t status;

 sc = arg;
 if (sc->oneshot)
  WR4(sc, EPIT_CR, sc->ctlreg);

 status = RD4(sc, EPIT_SR);
 WR4B(sc, EPIT_SR, status);

 if ((status & EPIT_SR_OCIF) == 0)
  return (FILTER_STRAY);

 if (sc->et.et_active)
  sc->et.et_event_cb(&sc->et, sc->et.et_arg);

 return (FILTER_HANDLED);
}
