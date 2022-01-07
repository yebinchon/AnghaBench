
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_env {int * worker; } ;
struct auth_xfer {TYPE_2__* task_probe; TYPE_1__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_4__ {scalar_t__ have_new_lease; int * cp; struct module_env* env; int * worker; int * masters; scalar_t__ only_lookup; } ;
struct TYPE_3__ {int * worker; } ;


 int have_probe_targets (int *) ;
 int xfr_probe_send_or_end (struct auth_xfer*,struct module_env*) ;
 int xfr_probe_start_list (struct auth_xfer*,struct auth_master*) ;
 int xfr_probe_start_lookups (struct auth_xfer*) ;
 int xfr_start_transfer (struct auth_xfer*,struct module_env*,struct auth_master*) ;

__attribute__((used)) static int
xfr_start_probe(struct auth_xfer* xfr, struct module_env* env,
 struct auth_master* spec)
{


 if(xfr->task_probe->worker == ((void*)0)) {
  if(!have_probe_targets(xfr->task_probe->masters) &&
   !(xfr->task_probe->only_lookup &&
   xfr->task_probe->masters != ((void*)0))) {


   if(xfr->task_transfer->worker == ((void*)0)) {
    xfr_start_transfer(xfr, env, spec);
    return 1;
   }

   return 0;
  }


  xfr->task_probe->worker = env->worker;
  xfr->task_probe->env = env;
  xfr->task_probe->cp = ((void*)0);



  xfr->task_probe->have_new_lease = 0;



  xfr_probe_start_list(xfr, spec);

  xfr_probe_start_lookups(xfr);

  xfr_probe_send_or_end(xfr, env);
  return 1;
 }
 return 0;
}
