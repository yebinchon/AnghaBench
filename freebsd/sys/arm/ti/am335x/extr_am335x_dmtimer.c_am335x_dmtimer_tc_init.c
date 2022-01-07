
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int tc_counter_mask; int tc_quality; struct am335x_dmtimer_softc* tc_priv; int tc_frequency; int tc_get_timecount; int tc_name; } ;
struct TYPE_3__ {TYPE_2__ tc; } ;
struct am335x_dmtimer_softc {int tclr; TYPE_1__ func; int sysclk_freq; int tmr_name; } ;


 int DMTIMER_READ4 (struct am335x_dmtimer_softc*,int ) ;
 int DMTIMER_WRITE4 (struct am335x_dmtimer_softc*,int ,int) ;
 int DMT_TCLR ;
 int DMT_TCLR_AUTOLOAD ;
 int DMT_TCLR_START ;
 int DMT_TCRR ;
 int DMT_TIOCP_CFG ;
 int DMT_TIOCP_RESET ;
 int DMT_TLDR ;
 int DMT_TSICR ;
 int DMT_TSICR_RESET ;
 int KASSERT (int ,char*) ;
 int am335x_dmtimer_delay ;
 int am335x_dmtimer_tc_get_timecount ;
 struct am335x_dmtimer_softc* am335x_dmtimer_tc_sc ;
 int arm_set_delay (int ,struct am335x_dmtimer_softc*) ;
 int tc_init (TYPE_2__*) ;

__attribute__((used)) static int
am335x_dmtimer_tc_init(struct am335x_dmtimer_softc *sc)
{
 KASSERT(am335x_dmtimer_tc_sc == ((void*)0), ("already have a timecounter"));


 DMTIMER_WRITE4(sc, DMT_TSICR, DMT_TSICR_RESET);
 while (DMTIMER_READ4(sc, DMT_TIOCP_CFG) & DMT_TIOCP_RESET)
  continue;

 sc->tclr |= DMT_TCLR_START | DMT_TCLR_AUTOLOAD;
 DMTIMER_WRITE4(sc, DMT_TLDR, 0);
 DMTIMER_WRITE4(sc, DMT_TCRR, 0);
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);

 sc->func.tc.tc_name = sc->tmr_name;
 sc->func.tc.tc_get_timecount = am335x_dmtimer_tc_get_timecount;
 sc->func.tc.tc_counter_mask = ~0u;
 sc->func.tc.tc_frequency = sc->sysclk_freq;
 sc->func.tc.tc_quality = 500;
 sc->func.tc.tc_priv = sc;

 am335x_dmtimer_tc_sc = sc;
 tc_init(&sc->func.tc);

 arm_set_delay(am335x_dmtimer_delay, sc);

 return (0);
}
