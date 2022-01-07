
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {char* name; char* desc; char* long_desc; scalar_t__ event; } ;


 struct pmu_events_map* pmu_events_map_get (int *) ;
 int printf (char*,char*,char*) ;
 int * strcasestr (char*,char const*) ;

void
pmc_pmu_print_counter_desc_long(const char *ev)
{
 const struct pmu_events_map *pme;
 const struct pmu_event *pe;

 if ((pme = pmu_events_map_get(((void*)0))) == ((void*)0))
  return;
 for (pe = pme->table; pe->name || pe->desc || pe->event; pe++) {
  if (pe->name == ((void*)0))
   continue;
  if (strcasestr(pe->name, ev) != ((void*)0)) {
   if (pe->long_desc != ((void*)0))
    printf("%s:\n%s\n", pe->name, pe->long_desc);
   else if (pe->desc != ((void*)0))
    printf("%s:\t%s\n", pe->name, pe->desc);
  }
 }
}
