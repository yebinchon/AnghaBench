
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx6_anatop_softc {scalar_t__ cpu_curmhz; scalar_t__ cpu_maxmhz; } ;


 int cpufreq_nearest_oppt (struct imx6_anatop_softc*,scalar_t__) ;
 int cpufreq_set_clock (struct imx6_anatop_softc*,int ) ;

__attribute__((used)) static void
tempmon_gofast(struct imx6_anatop_softc *sc)
{

 if (sc->cpu_curmhz < sc->cpu_maxmhz) {
  cpufreq_set_clock(sc, cpufreq_nearest_oppt(sc, sc->cpu_maxmhz));
 }
}
