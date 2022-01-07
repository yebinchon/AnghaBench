
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_event_descr {int pm_ev_name; } ;
struct pmc_class_descr {size_t pm_evc_event_table_size; struct pmc_event_descr* pm_evc_event_table; } ;


 scalar_t__ pmc_match_event_name (char const*,int ) ;

__attribute__((used)) static const struct pmc_event_descr *
pmc_match_event_class(const char *name,
    const struct pmc_class_descr *pcd)
{
 size_t n;
 const struct pmc_event_descr *ev;

 ev = pcd->pm_evc_event_table;
 for (n = 0; n < pcd->pm_evc_event_table_size; n++, ev++)
  if (pmc_match_event_name(name, ev->pm_ev_name))
   return (ev);

 return (((void*)0));
}
