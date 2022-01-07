
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra124_cpufreq_softc {int nspeed_points; TYPE_1__* speed_points; } ;
struct cpu_speed_point {int dummy; } ;
struct TYPE_2__ {int uvolt; int freq; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int * cpu_freq_tbl ;
 int freq_to_voltage (struct tegra124_cpufreq_softc*,int ) ;
 TYPE_1__* malloc (int,int ,int ) ;
 int nitems (int *) ;

__attribute__((used)) static void
build_speed_points(struct tegra124_cpufreq_softc *sc) {
 int i;

 sc->nspeed_points = nitems(cpu_freq_tbl);
 sc->speed_points = malloc(sizeof(struct cpu_speed_point) *
     sc->nspeed_points, M_DEVBUF, M_NOWAIT);
 for (i = 0; i < sc->nspeed_points; i++) {
  sc->speed_points[i].freq = cpu_freq_tbl[i];
  sc->speed_points[i].uvolt = freq_to_voltage(sc,
      cpu_freq_tbl[i]);
 }
}
