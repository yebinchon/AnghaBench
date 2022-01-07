
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {char* name; char* desc; char* event; char* long_desc; char* topic; char* pmu; char* unit; char* perpkg; char* metric_expr; char* metric_name; char* metric_group; } ;


 struct pmu_events_map* pmu_events_map_get (int *) ;
 int printf (char*,char*) ;
 int * strcasestr (char*,char const*) ;

void
pmc_pmu_print_counter_full(const char *ev)
{
 const struct pmu_events_map *pme;
 const struct pmu_event *pe;

 if ((pme = pmu_events_map_get(((void*)0))) == ((void*)0))
  return;
 for (pe = pme->table; pe->name || pe->desc || pe->event; pe++) {
  if (pe->name == ((void*)0))
   continue;
  if (strcasestr(pe->name, ev) == ((void*)0))
   continue;
  printf("name: %s\n", pe->name);
  if (pe->long_desc != ((void*)0))
   printf("desc: %s\n", pe->long_desc);
  else if (pe->desc != ((void*)0))
   printf("desc: %s\n", pe->desc);
  if (pe->event != ((void*)0))
   printf("event: %s\n", pe->event);
  if (pe->topic != ((void*)0))
   printf("topic: %s\n", pe->topic);
  if (pe->pmu != ((void*)0))
   printf("pmu: %s\n", pe->pmu);
  if (pe->unit != ((void*)0))
   printf("unit: %s\n", pe->unit);
  if (pe->perpkg != ((void*)0))
   printf("perpkg: %s\n", pe->perpkg);
  if (pe->metric_expr != ((void*)0))
   printf("metric_expr: %s\n", pe->metric_expr);
  if (pe->metric_name != ((void*)0))
   printf("metric_name: %s\n", pe->metric_name);
  if (pe->metric_group != ((void*)0))
   printf("metric_group: %s\n", pe->metric_group);
 }
}
