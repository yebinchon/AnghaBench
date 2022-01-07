
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pmu_event_desc {int ped_period; } ;
struct pmu_event {char const* alias; int * event; } ;


 int DEFAULT_SAMPLE_COUNT ;
 char* pmu_alias_get (char const*) ;
 struct pmu_event* pmu_event_get (int *,char const*,int *) ;
 scalar_t__ pmu_parse_event (struct pmu_event_desc*,int *) ;

uint64_t
pmc_pmu_sample_rate_get(const char *event_name)
{
 const struct pmu_event *pe;
 struct pmu_event_desc ped;

 event_name = pmu_alias_get(event_name);
 if ((pe = pmu_event_get(((void*)0), event_name, ((void*)0))) == ((void*)0))
  return (DEFAULT_SAMPLE_COUNT);
 if (pe->alias && (pe = pmu_event_get(((void*)0), pe->alias, ((void*)0))) == ((void*)0))
  return (DEFAULT_SAMPLE_COUNT);
 if (pe->event == ((void*)0))
  return (DEFAULT_SAMPLE_COUNT);
 if (pmu_parse_event(&ped, pe->event))
  return (DEFAULT_SAMPLE_COUNT);
 return (ped.ped_period);
}
