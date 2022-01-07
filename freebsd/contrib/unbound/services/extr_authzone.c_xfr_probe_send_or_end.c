
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_env {int * now; } ;
struct auth_xfer {int lock; TYPE_2__* task_nextprobe; int name; int lease_time; scalar_t__ have_zone; TYPE_1__* task_probe; } ;
struct TYPE_4__ {int * worker; } ;
struct TYPE_3__ {scalar_t__ have_new_lease; scalar_t__ only_lookup; scalar_t__ lookup_target; } ;


 int AUTH_PROBE_TIMEOUT ;
 scalar_t__ VERB_ALGO ;
 int dname_str (int ,char*) ;
 int lock_basic_unlock (int *) ;
 int probe_copy_masters_for_allow_notify (struct auth_xfer*) ;
 int verbose (scalar_t__,char*,char*) ;
 scalar_t__ verbosity ;
 int xfr_probe_disown (struct auth_xfer*) ;
 int xfr_probe_end_of_list (struct auth_xfer*) ;
 scalar_t__ xfr_probe_lookup_host (struct auth_xfer*,struct module_env*) ;
 int xfr_probe_move_to_next_lookup (struct auth_xfer*,struct module_env*) ;
 int xfr_probe_nextmaster (struct auth_xfer*) ;
 scalar_t__ xfr_probe_send_probe (struct auth_xfer*,struct module_env*,int ) ;
 int xfr_set_timeout (struct auth_xfer*,struct module_env*,int,int ) ;

__attribute__((used)) static void
xfr_probe_send_or_end(struct auth_xfer* xfr, struct module_env* env)
{

 while(xfr->task_probe->lookup_target) {
  if(xfr_probe_lookup_host(xfr, env)) {





   if(verbosity >= VERB_ALGO) {
    char zname[255+1];
    dname_str(xfr->name, zname);
    verbose(VERB_ALGO, "auth zone %s probe next target lookup", zname);
   }
   lock_basic_unlock(&xfr->lock);
   return;
  }
  xfr_probe_move_to_next_lookup(xfr, env);
 }


 probe_copy_masters_for_allow_notify(xfr);
 if(verbosity >= VERB_ALGO) {
  char zname[255+1];
  dname_str(xfr->name, zname);
  verbose(VERB_ALGO, "auth zone %s probe: notify addrs updated", zname);
 }
 if(xfr->task_probe->only_lookup) {

  xfr->task_probe->only_lookup = 0;
  if(verbosity >= VERB_ALGO) {
   char zname[255+1];
   dname_str(xfr->name, zname);
   verbose(VERB_ALGO, "auth zone %s probe: finished only_lookup", zname);
  }
  xfr_probe_disown(xfr);
  if(xfr->task_nextprobe->worker == ((void*)0))
   xfr_set_timeout(xfr, env, 0, 0);
  lock_basic_unlock(&xfr->lock);
  return;
 }


 while(!xfr_probe_end_of_list(xfr)) {
  if(xfr_probe_send_probe(xfr, env, AUTH_PROBE_TIMEOUT)) {

   lock_basic_unlock(&xfr->lock);
   return;
  }

  xfr_probe_nextmaster(xfr);
 }


 if(xfr->task_probe->have_new_lease) {

  if(verbosity >= VERB_ALGO) {
   char zname[255+1];
   dname_str(xfr->name, zname);
   verbose(VERB_ALGO, "auth_zone %s unchanged, new lease, wait", zname);
  }
  xfr_probe_disown(xfr);
  if(xfr->have_zone)
   xfr->lease_time = *env->now;
  if(xfr->task_nextprobe->worker == ((void*)0))
   xfr_set_timeout(xfr, env, 0, 0);
 } else {
  if(verbosity >= VERB_ALGO) {
   char zname[255+1];
   dname_str(xfr->name, zname);
   verbose(VERB_ALGO, "auth zone %s soa probe failed, wait to retry", zname);
  }


  xfr_probe_disown(xfr);

  if(xfr->task_nextprobe->worker == ((void*)0))
   xfr_set_timeout(xfr, env, 1, 0);
 }

 lock_basic_unlock(&xfr->lock);
}
