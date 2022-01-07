
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct tegra124_cpufreq_softc {int nspeed_points; struct cpu_speed_point* speed_points; } ;
struct cpu_speed_point {scalar_t__ freq; } ;



__attribute__((used)) static struct cpu_speed_point *
get_speed_point(struct tegra124_cpufreq_softc *sc, uint64_t freq)
{
 int i;

 if (sc->speed_points[0].freq >= freq)
  return (sc->speed_points + 0);

 for (i = 0; i < sc->nspeed_points - 1; i++) {
  if (sc->speed_points[i + 1].freq > freq)
   return (sc->speed_points + i);
 }

 return (sc->speed_points + sc->nspeed_points - 1);
}
