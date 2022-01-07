
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl310_softc {int * sc_ich; int sc_irq_h; int sc_irq_res; int sc_dev; } ;


 int EVENT_COUNTER_CONF_CO ;
 int EVENT_COUNTER_CONF_DRREQ ;
 int EVENT_COUNTER_CONF_INCR ;
 int EVENT_COUNTER_CTRL_C0_RESET ;
 int EVENT_COUNTER_CTRL_C1_RESET ;
 int EVENT_COUNTER_CTRL_ENABLED ;
 int INTR_MASK_ALL ;
 int INTR_MASK_ECNTR ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int M_DEVBUF ;
 int PL310_EVENT_COUNTER0_CONF ;
 int PL310_EVENT_COUNTER1_CONF ;
 int PL310_EVENT_COUNTER_CTRL ;
 int PL310_INTR_CLEAR ;
 int PL310_INTR_MASK ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct pl310_softc*,int *) ;
 int config_intrhook_disestablish (int *) ;
 int free (int *,int ) ;
 int pl310_filter ;
 int pl310_write4 (struct pl310_softc*,int ,int) ;

__attribute__((used)) static void
pl310_config_intr(void *arg)
{
 struct pl310_softc * sc;

 sc = arg;


 bus_setup_intr(sc->sc_dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     pl310_filter, ((void*)0), sc, &sc->sc_irq_h);


 pl310_write4(sc, PL310_EVENT_COUNTER0_CONF,
     EVENT_COUNTER_CONF_INCR | EVENT_COUNTER_CONF_CO);

 pl310_write4(sc, PL310_EVENT_COUNTER1_CONF,
     EVENT_COUNTER_CONF_INCR | EVENT_COUNTER_CONF_DRREQ);


 pl310_write4(sc, PL310_INTR_CLEAR, INTR_MASK_ECNTR);
 pl310_write4(sc, PL310_INTR_MASK, INTR_MASK_ALL);


 pl310_write4(sc, PL310_EVENT_COUNTER_CTRL,
     EVENT_COUNTER_CTRL_ENABLED |
     EVENT_COUNTER_CTRL_C0_RESET |
     EVENT_COUNTER_CTRL_C1_RESET);

 config_intrhook_disestablish(sc->sc_ich);
 free(sc->sc_ich, M_DEVBUF);
 sc->sc_ich = ((void*)0);
}
