
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx6_anatop_softc {scalar_t__ temp_last_cnt; scalar_t__ temp_throttle_trigger_cnt; scalar_t__ temp_throttle_reset_cnt; int temp_throttle_delay; int temp_throttle_callout; } ;


 int callout_reset_sbt (int *,int ,int ,void (*) (void*),struct imx6_anatop_softc*,int ) ;
 int tempmon_gofast (struct imx6_anatop_softc*) ;
 int tempmon_goslow (struct imx6_anatop_softc*) ;

__attribute__((used)) static void
tempmon_throttle_check(void *arg)
{
 struct imx6_anatop_softc *sc = arg;


 if (sc->temp_last_cnt < sc->temp_throttle_trigger_cnt)
  tempmon_goslow(sc);
 else if (sc->temp_last_cnt > (sc->temp_throttle_reset_cnt))
  tempmon_gofast(sc);

 callout_reset_sbt(&sc->temp_throttle_callout, sc->temp_throttle_delay,
  0, tempmon_throttle_check, sc, 0);

}
