
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_ev {int ev_cpu; int * ev_spec; int ev_saved; int ev_pmcid; int * ev_name; int ev_mode; int ev_flags; int ev_cumulative; int ev_count; } ;
struct pmcstat_args {int pa_events; } ;
typedef int cpuset_t ;


 int CPU_ISSET (int,int const*) ;
 int CPU_SETSIZE ;
 int EX_SOFTWARE ;
 int STAILQ_INSERT_TAIL (int *,struct pmcstat_ev*,int ) ;
 int errx (int ,char*) ;
 int ev_next ;
 struct pmcstat_ev* malloc (int) ;
 int memset (struct pmcstat_ev*,int ,int) ;
 void* strdup (int *) ;

void
pmcstat_clone_event_descriptor(struct pmcstat_ev *ev, const cpuset_t *cpumask,
    struct pmcstat_args *args)
{
 int cpu;
 struct pmcstat_ev *ev_clone;

 for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
  if (!CPU_ISSET(cpu, cpumask))
   continue;

  if ((ev_clone = malloc(sizeof(*ev_clone))) == ((void*)0))
   errx(EX_SOFTWARE, "ERROR: Out of memory");
  (void) memset(ev_clone, 0, sizeof(*ev_clone));

  ev_clone->ev_count = ev->ev_count;
  ev_clone->ev_cpu = cpu;
  ev_clone->ev_cumulative = ev->ev_cumulative;
  ev_clone->ev_flags = ev->ev_flags;
  ev_clone->ev_mode = ev->ev_mode;
  ev_clone->ev_name = strdup(ev->ev_name);
  if (ev_clone->ev_name == ((void*)0))
   errx(EX_SOFTWARE, "ERROR: Out of memory");
  ev_clone->ev_pmcid = ev->ev_pmcid;
  ev_clone->ev_saved = ev->ev_saved;
  ev_clone->ev_spec = strdup(ev->ev_spec);
  if (ev_clone->ev_spec == ((void*)0))
   errx(EX_SOFTWARE, "ERROR: Out of memory");

  STAILQ_INSERT_TAIL(&args->pa_events, ev_clone, ev_next);
 }
}
