
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_env {scalar_t__ worker; } ;
struct auth_xfer {int lock; TYPE_2__* task_nextprobe; int name; TYPE_1__* task_transfer; } ;
struct TYPE_4__ {int * worker; } ;
struct TYPE_3__ {scalar_t__ worker; int master; scalar_t__ lookup_target; } ;


 scalar_t__ VERB_ALGO ;
 int dname_str (int ,char*) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int) ;
 int verbose (scalar_t__,char*,char*) ;
 scalar_t__ verbosity ;
 int xfr_set_timeout (struct auth_xfer*,struct module_env*,int,int ) ;
 int xfr_transfer_current_master (struct auth_xfer*) ;
 int xfr_transfer_disown (struct auth_xfer*) ;
 int xfr_transfer_end_of_list (struct auth_xfer*) ;
 scalar_t__ xfr_transfer_init_fetch (struct auth_xfer*,struct module_env*) ;
 scalar_t__ xfr_transfer_lookup_host (struct auth_xfer*,struct module_env*) ;
 int xfr_transfer_move_to_next_lookup (struct auth_xfer*,struct module_env*) ;
 int xfr_transfer_nextmaster (struct auth_xfer*) ;

__attribute__((used)) static void
xfr_transfer_nexttarget_or_end(struct auth_xfer* xfr, struct module_env* env)
{
 log_assert(xfr->task_transfer->worker == env->worker);


 while(xfr->task_transfer->lookup_target) {
  if(xfr_transfer_lookup_host(xfr, env)) {





   if(verbosity >= VERB_ALGO) {
    char zname[255+1];
    dname_str(xfr->name, zname);
    verbose(VERB_ALGO, "auth zone %s transfer next target lookup", zname);
   }
   lock_basic_unlock(&xfr->lock);
   return;
  }
  xfr_transfer_move_to_next_lookup(xfr, env);
 }



 while(!xfr_transfer_end_of_list(xfr)) {
  xfr->task_transfer->master = xfr_transfer_current_master(xfr);
  if(xfr_transfer_init_fetch(xfr, env)) {

   lock_basic_unlock(&xfr->lock);
   return;
  }

  xfr_transfer_nextmaster(xfr);
 }
 if(verbosity >= VERB_ALGO) {
  char zname[255+1];
  dname_str(xfr->name, zname);
  verbose(VERB_ALGO, "auth zone %s transfer failed, wait", zname);
 }



 xfr_transfer_disown(xfr);


 if(xfr->task_nextprobe->worker == ((void*)0))
  xfr_set_timeout(xfr, env, 1, 0);
 lock_basic_unlock(&xfr->lock);
}
