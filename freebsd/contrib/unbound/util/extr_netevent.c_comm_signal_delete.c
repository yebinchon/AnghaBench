
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_signal {int ev; struct internal_signal* next; struct internal_signal* ev_signal; } ;
struct comm_signal {int ev; struct comm_signal* next; struct comm_signal* ev_signal; } ;


 int free (struct internal_signal*) ;
 int ub_event_free (int ) ;
 int ub_signal_del (int ) ;

void
comm_signal_delete(struct comm_signal* comsig)
{
 struct internal_signal* p, *np;
 if(!comsig)
  return;
 p=comsig->ev_signal;
 while(p) {
  np = p->next;
  ub_signal_del(p->ev);
  ub_event_free(p->ev);
  free(p);
  p = np;
 }
 free(comsig);
}
