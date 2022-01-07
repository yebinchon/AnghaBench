
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* tc_name; int tc_quality; int tc_counter_mask; struct epit_softc* tc_priv; int tc_get_timecount; int tc_frequency; } ;
struct epit_softc {int ctlreg; TYPE_1__ tc; int clkfreq; } ;


 int EPIT_CR ;
 int EPIT_CR_EN ;
 int EPIT_LR ;
 int WR4 (struct epit_softc*,int ,int) ;
 int arm_set_delay (int ,struct epit_softc*) ;
 int epit_do_delay ;
 int epit_tc_get_timecount ;
 int tc_init (TYPE_1__*) ;

__attribute__((used)) static int
epit_tc_attach(struct epit_softc *sc)
{


 WR4(sc, EPIT_LR, 0xffffffff);
 WR4(sc, EPIT_CR, sc->ctlreg | EPIT_CR_EN);


 sc->tc.tc_name = "EPIT";
 sc->tc.tc_quality = 1000;
 sc->tc.tc_frequency = sc->clkfreq;
 sc->tc.tc_counter_mask = 0xffffffff;
 sc->tc.tc_get_timecount = epit_tc_get_timecount;
 sc->tc.tc_priv = sc;
 tc_init(&sc->tc);


 arm_set_delay(epit_do_delay, sc);

 return (0);
}
