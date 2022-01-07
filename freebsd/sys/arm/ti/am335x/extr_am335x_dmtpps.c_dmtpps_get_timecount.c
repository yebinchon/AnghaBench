
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct dmtpps_softc* tc_priv; } ;
struct dmtpps_softc {int dummy; } ;


 int DMTIMER_READ4 (struct dmtpps_softc*,int ) ;
 int DMT_TCRR ;

__attribute__((used)) static unsigned
dmtpps_get_timecount(struct timecounter *tc)
{
 struct dmtpps_softc *sc;

 sc = tc->tc_priv;

 return (DMTIMER_READ4(sc, DMT_TCRR));
}
