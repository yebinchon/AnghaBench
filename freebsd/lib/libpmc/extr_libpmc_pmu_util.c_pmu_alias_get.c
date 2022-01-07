
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_alias {char const* pa_name; int * pa_alias; } ;
typedef scalar_t__ pmu_mfr_t ;


 scalar_t__ PMU_AMD ;
 scalar_t__ PMU_INTEL ;
 scalar_t__ PMU_INVALID ;
 struct pmu_alias* pmu_amd_alias_table ;
 scalar_t__ pmu_events_mfr () ;
 struct pmu_alias* pmu_intel_alias_table ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static const char *
pmu_alias_get(const char *name)
{
 pmu_mfr_t mfr;
 struct pmu_alias *pa;
 struct pmu_alias *pmu_alias_table;

 if ((mfr = pmu_events_mfr()) == PMU_INVALID)
  return (name);
 if (mfr == PMU_AMD)
  pmu_alias_table = pmu_amd_alias_table;
 else if (mfr == PMU_INTEL)
  pmu_alias_table = pmu_intel_alias_table;
 else
  return (name);

 for (pa = pmu_alias_table; pa->pa_alias != ((void*)0); pa++)
  if (strcasecmp(name, pa->pa_alias) == 0)
   return (pa->pa_name);

 return (name);
}
