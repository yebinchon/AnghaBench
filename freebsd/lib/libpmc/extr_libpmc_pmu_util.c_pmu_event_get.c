
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {int * name; scalar_t__ event; scalar_t__ desc; } ;


 struct pmu_events_map* pmu_events_map_get (char const*) ;
 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static const struct pmu_event *
pmu_event_get(const char *cpuid, const char *event_name, int *idx)
{
 const struct pmu_events_map *pme;
 const struct pmu_event *pe;
 int i;

 if ((pme = pmu_events_map_get(cpuid)) == ((void*)0))
  return (((void*)0));
 for (i = 0, pe = pme->table; pe->name || pe->desc || pe->event; pe++, i++) {
  if (pe->name == ((void*)0))
   continue;
  if (strcasecmp(pe->name, event_name) == 0) {
   if (idx)
    *idx = i;
   return (pe);
  }
 }
 return (((void*)0));
}
