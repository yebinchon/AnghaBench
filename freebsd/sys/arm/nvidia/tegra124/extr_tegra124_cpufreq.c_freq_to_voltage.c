
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct tegra124_cpufreq_softc {int speedo_value; TYPE_1__* cpu_def; } ;
struct speedo_entry {scalar_t__ freq; int c2; int c1; int c0; } ;
struct TYPE_2__ {int speedo_nitems; int speedo_scale; int step_uvolt; int min_uvolt; int max_uvolt; struct speedo_entry* speedo_tbl; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int ROUND_DOWN (int ,int) ;
 int ROUND_UP (int,int) ;

__attribute__((used)) static int
freq_to_voltage(struct tegra124_cpufreq_softc *sc, uint64_t freq)
{
 int uv, scale, min_uvolt, max_uvolt, step_uvolt;
 struct speedo_entry *ent;
 int i;


 ent = ((void*)0);
 for (i = 0; i < sc->cpu_def->speedo_nitems; i++) {
  if (sc->cpu_def->speedo_tbl[i].freq >= freq) {
   ent = &sc->cpu_def->speedo_tbl[i];
   break;
  }
 }
 if (ent == ((void*)0))
  ent = &sc->cpu_def->speedo_tbl[sc->cpu_def->speedo_nitems - 1];
 scale = sc->cpu_def->speedo_scale;



 uv = DIV_ROUND_CLOSEST(ent->c2 * sc->speedo_value, scale);
 uv = DIV_ROUND_CLOSEST((uv + ent->c1) * sc->speedo_value, scale) +
     ent->c0;
 step_uvolt = sc->cpu_def->step_uvolt;

 uv = ROUND_UP(uv, step_uvolt);


 min_uvolt = ROUND_UP(sc->cpu_def->min_uvolt, step_uvolt);
 max_uvolt = ROUND_DOWN(sc->cpu_def->max_uvolt, step_uvolt);
 if (uv < min_uvolt)
  uv = min_uvolt;
 if (uv > max_uvolt)
  uv = max_uvolt;
 return (uv);

}
