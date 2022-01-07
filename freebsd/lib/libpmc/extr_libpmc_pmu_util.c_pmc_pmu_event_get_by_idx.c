
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_events_map {TYPE_1__* table; } ;
struct TYPE_2__ {char const* name; } ;


 int assert (char const*) ;
 struct pmu_events_map* pmu_events_map_get (char const*) ;

const char *
pmc_pmu_event_get_by_idx(const char *cpuid, int idx)
{
 const struct pmu_events_map *pme;

 if ((pme = pmu_events_map_get(cpuid)) == ((void*)0))
  return (((void*)0));
 assert(pme->table[idx].name);
 return (pme->table[idx].name);
}
