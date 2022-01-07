
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct am335x_dmtimer_softc* tc_priv; } ;
struct am335x_dmtimer_softc {int dummy; } ;


 int DMTIMER_READ4 (struct am335x_dmtimer_softc*,int ) ;
 int DMT_TCRR ;

__attribute__((used)) static unsigned
am335x_dmtimer_tc_get_timecount(struct timecounter *tc)
{
 struct am335x_dmtimer_softc *sc;

 sc = tc->tc_priv;

 return (DMTIMER_READ4(sc, DMT_TCRR));
}
