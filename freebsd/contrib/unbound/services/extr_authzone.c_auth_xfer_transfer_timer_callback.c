
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct module_env {TYPE_1__* outnet; } ;
struct auth_xfer {TYPE_3__* task_transfer; int lock; } ;
struct TYPE_7__ {scalar_t__ ixfr_possible_timeout_count; int ixfr_fail; int * cp; TYPE_2__* master; scalar_t__ on_ixfr; struct module_env* env; } ;
struct TYPE_6__ {int host; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;


 scalar_t__ NUM_TIMEOUTS_FALLBACK_IXFR ;
 int VERB_ALGO ;
 int auth_chunks_delete (TYPE_3__*) ;
 int comm_point_delete (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (TYPE_3__*) ;
 int verbose (int ,char*,int ) ;
 int xfr_transfer_nextmaster (struct auth_xfer*) ;
 int xfr_transfer_nexttarget_or_end (struct auth_xfer*,struct module_env*) ;

void
auth_xfer_transfer_timer_callback(void* arg)
{
 struct auth_xfer* xfr = (struct auth_xfer*)arg;
 struct module_env* env;
 int gonextonfail = 1;
 log_assert(xfr->task_transfer);
 lock_basic_lock(&xfr->lock);
 env = xfr->task_transfer->env;
 if(env->outnet->want_to_quit) {
  lock_basic_unlock(&xfr->lock);
  return;
 }

 verbose(VERB_ALGO, "xfr stopped, connection timeout to %s",
  xfr->task_transfer->master->host);


 if(xfr->task_transfer->on_ixfr) {
  xfr->task_transfer->ixfr_possible_timeout_count++;
  if(xfr->task_transfer->ixfr_possible_timeout_count >=
   NUM_TIMEOUTS_FALLBACK_IXFR) {
   verbose(VERB_ALGO, "xfr to %s, fallback "
    "from IXFR to AXFR (because of timeouts)",
    xfr->task_transfer->master->host);
   xfr->task_transfer->ixfr_fail = 1;
   gonextonfail = 0;
  }
 }


 auth_chunks_delete(xfr->task_transfer);
 comm_point_delete(xfr->task_transfer->cp);
 xfr->task_transfer->cp = ((void*)0);
 if(gonextonfail)
  xfr_transfer_nextmaster(xfr);
 xfr_transfer_nexttarget_or_end(xfr, env);
}
