
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct internal_signal {struct internal_signal* next; int * ev; } ;
struct comm_signal {struct internal_signal* ev_signal; TYPE_2__* base; } ;
struct TYPE_4__ {TYPE_1__* eb; } ;
struct TYPE_3__ {int base; } ;


 scalar_t__ calloc (int,int) ;
 int comm_signal_callback ;
 int free (struct internal_signal*) ;
 int log_assert (struct comm_signal*) ;
 int log_err (char*) ;
 int ub_event_free (int *) ;
 scalar_t__ ub_signal_add (int *,int *) ;
 int * ub_signal_new (int ,int,int ,struct comm_signal*) ;

int
comm_signal_bind(struct comm_signal* comsig, int sig)
{
 struct internal_signal* entry = (struct internal_signal*)calloc(1,
  sizeof(struct internal_signal));
 if(!entry) {
  log_err("malloc failed");
  return 0;
 }
 log_assert(comsig);

 entry->ev = ub_signal_new(comsig->base->eb->base, sig,
  comm_signal_callback, comsig);
 if(entry->ev == ((void*)0)) {
  log_err("Could not create signal event");
  free(entry);
  return 0;
 }
 if(ub_signal_add(entry->ev, ((void*)0)) != 0) {
  log_err("Could not add signal handler");
  ub_event_free(entry->ev);
  free(entry);
  return 0;
 }

 entry->next = comsig->ev_signal;
 comsig->ev_signal = entry;
 return 1;
}
