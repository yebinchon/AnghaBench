
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct oppt {scalar_t__ mhz; } ;
struct imx6_anatop_softc {scalar_t__ cpu_maxmhz_hw; int cpu_overclock_enable; } ;


 int INT_MAX ;
 int abs (int) ;
 struct oppt* imx6_oppt_table ;
 int nitems (struct oppt*) ;

__attribute__((used)) static struct oppt *
cpufreq_nearest_oppt(struct imx6_anatop_softc *sc, uint32_t cpu_newmhz)
{
 int d, diff, i, nearest;

 if (cpu_newmhz > sc->cpu_maxmhz_hw && !sc->cpu_overclock_enable)
  cpu_newmhz = sc->cpu_maxmhz_hw;

 diff = INT_MAX;
 nearest = 0;
 for (i = 0; i < nitems(imx6_oppt_table); ++i) {
  d = abs((int)cpu_newmhz - (int)imx6_oppt_table[i].mhz);
  if (diff > d) {
   diff = d;
   nearest = i;
  }
 }
 return (&imx6_oppt_table[nearest]);
}
