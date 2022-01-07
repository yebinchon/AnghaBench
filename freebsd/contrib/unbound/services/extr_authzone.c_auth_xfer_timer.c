
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_env {scalar_t__* now; TYPE_1__* outnet; } ;
struct auth_xfer {scalar_t__ lease_time; scalar_t__ expiry; int lock; int zone_expired; scalar_t__ have_zone; TYPE_2__* task_nextprobe; } ;
struct TYPE_4__ {struct module_env* env; } ;
struct TYPE_3__ {scalar_t__ want_to_quit; } ;


 int auth_xfer_set_expired (struct auth_xfer*,struct module_env*,int) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (TYPE_2__*) ;
 int xfr_nextprobe_disown (struct auth_xfer*) ;
 int xfr_start_probe (struct auth_xfer*,struct module_env*,int *) ;

void
auth_xfer_timer(void* arg)
{
 struct auth_xfer* xfr = (struct auth_xfer*)arg;
 struct module_env* env;
 log_assert(xfr->task_nextprobe);
 lock_basic_lock(&xfr->lock);
 env = xfr->task_nextprobe->env;
 if(env->outnet->want_to_quit) {
  lock_basic_unlock(&xfr->lock);
  return;
 }


 if(xfr->have_zone && !xfr->zone_expired &&
    *env->now >= xfr->lease_time + xfr->expiry) {
  lock_basic_unlock(&xfr->lock);
  auth_xfer_set_expired(xfr, env, 1);
  lock_basic_lock(&xfr->lock);
 }

 xfr_nextprobe_disown(xfr);

 if(!xfr_start_probe(xfr, env, ((void*)0))) {

  lock_basic_unlock(&xfr->lock);
 }
}
