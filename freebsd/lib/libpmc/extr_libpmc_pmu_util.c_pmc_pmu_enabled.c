
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pmu_events_map_get (int *) ;

int
pmc_pmu_enabled(void)
{

 return (pmu_events_map_get(((void*)0)) != ((void*)0));
}
