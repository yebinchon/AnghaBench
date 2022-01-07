
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_event_desc {int dummy; } ;
struct pmu_event {char const* alias; int * event; } ;
struct pmc_op_pmcallocate {int pm_caps; int pm_ev; int pm_md; } ;
typedef scalar_t__ pmu_mfr_t ;


 int ENOENT ;
 int PMC_CAP_READ ;
 int PMC_CAP_WRITE ;
 scalar_t__ PMU_INTEL ;
 scalar_t__ PMU_INVALID ;
 int assert (int) ;
 int bzero (int *,int) ;
 int pmc_pmu_amd_pmcallocate (char const*,struct pmc_op_pmcallocate*,struct pmu_event_desc*) ;
 int pmc_pmu_intel_pmcallocate (char const*,struct pmc_op_pmcallocate*,struct pmu_event_desc*) ;
 char* pmu_alias_get (char const*) ;
 struct pmu_event* pmu_event_get (int *,char const*,int*) ;
 scalar_t__ pmu_events_mfr () ;
 scalar_t__ pmu_parse_event (struct pmu_event_desc*,int *) ;

int
pmc_pmu_pmcallocate(const char *event_name, struct pmc_op_pmcallocate *pm)
{
 const struct pmu_event *pe;
 struct pmu_event_desc ped;
 pmu_mfr_t mfr;
 int idx = -1;

 if ((mfr = pmu_events_mfr()) == PMU_INVALID)
  return (ENOENT);

 bzero(&pm->pm_md, sizeof(pm->pm_md));
 pm->pm_caps |= (PMC_CAP_READ | PMC_CAP_WRITE);
 event_name = pmu_alias_get(event_name);
 if ((pe = pmu_event_get(((void*)0), event_name, &idx)) == ((void*)0))
  return (ENOENT);
 if (pe->alias && (pe = pmu_event_get(((void*)0), pe->alias, &idx)) == ((void*)0))
  return (ENOENT);
 assert(idx >= 0);
 pm->pm_ev = idx;

 if (pe->event == ((void*)0))
  return (ENOENT);
 if (pmu_parse_event(&ped, pe->event))
  return (ENOENT);

 if (mfr == PMU_INTEL)
  return (pmc_pmu_intel_pmcallocate(event_name, pm, &ped));
 else
  return (pmc_pmu_amd_pmcallocate(event_name, pm, &ped));
}
