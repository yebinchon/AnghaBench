
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pmu_alias_get (char const*) ;
 int * pmu_event_get (char const*,char const*,int*) ;

int
pmc_pmu_idx_get_by_event(const char *cpuid, const char *event)
{
 int idx;
 const char *realname;

 realname = pmu_alias_get(event);
 if (pmu_event_get(cpuid, realname, &idx) == ((void*)0))
  return (-1);
 return (idx);
}
