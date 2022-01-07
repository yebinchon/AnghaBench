
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event_desc {int dummy; } ;
struct pmu_event {char* name; scalar_t__ event; scalar_t__ desc; } ;


 char* getenv (char*) ;
 struct pmu_events_map* pmu_events_map_get (int *) ;
 int pmu_parse_event (struct pmu_event_desc*,scalar_t__) ;
 int printf (char*,char*) ;
 int * strcasestr (char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;

void
pmc_pmu_print_counters(const char *event_name)
{
 const struct pmu_events_map *pme;
 const struct pmu_event *pe;
 struct pmu_event_desc ped;
 char *debug;
 int do_debug;

 debug = getenv("PMUDEBUG");
 do_debug = 0;

 if (debug != ((void*)0) && strcmp(debug, "true") == 0)
  do_debug = 1;
 if ((pme = pmu_events_map_get(((void*)0))) == ((void*)0))
  return;
 for (pe = pme->table; pe->name || pe->desc || pe->event; pe++) {
  if (pe->name == ((void*)0))
   continue;
  if (event_name != ((void*)0) && strcasestr(pe->name, event_name) == ((void*)0))
   continue;
  printf("\t%s\n", pe->name);
  if (do_debug)
   pmu_parse_event(&ped, pe->event);
 }
}
