
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_env {TYPE_1__* outnet; } ;
struct auth_xfer {TYPE_2__* task_probe; int lock; int name; } ;
struct TYPE_4__ {int timeout; int * cp; struct module_env* env; } ;
struct TYPE_3__ {scalar_t__ want_to_quit; } ;


 int AUTH_PROBE_TIMEOUT_STOP ;
 scalar_t__ VERB_ALGO ;
 int comm_point_delete (int *) ;
 int dname_str (int ,char*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (TYPE_2__*) ;
 int verbose (scalar_t__,char*,char*) ;
 scalar_t__ verbosity ;
 int xfr_probe_nextmaster (struct auth_xfer*) ;
 int xfr_probe_send_or_end (struct auth_xfer*,struct module_env*) ;
 scalar_t__ xfr_probe_send_probe (struct auth_xfer*,struct module_env*,int) ;

void
auth_xfer_probe_timer_callback(void* arg)
{
 struct auth_xfer* xfr = (struct auth_xfer*)arg;
 struct module_env* env;
 log_assert(xfr->task_probe);
 lock_basic_lock(&xfr->lock);
 env = xfr->task_probe->env;
 if(env->outnet->want_to_quit) {
  lock_basic_unlock(&xfr->lock);
  return;
 }

 if(verbosity >= VERB_ALGO) {
  char zname[255+1];
  dname_str(xfr->name, zname);
  verbose(VERB_ALGO, "auth zone %s soa probe timeout", zname);
 }
 if(xfr->task_probe->timeout <= AUTH_PROBE_TIMEOUT_STOP) {

  if(xfr_probe_send_probe(xfr, env, xfr->task_probe->timeout*2)) {
   lock_basic_unlock(&xfr->lock);
   return;
  }
 }

 comm_point_delete(xfr->task_probe->cp);
 xfr->task_probe->cp = ((void*)0);


 xfr_probe_nextmaster(xfr);
 xfr_probe_send_or_end(xfr, env);
}
