
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_env {int * worker; } ;
struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_2__ {struct module_env* env; int * worker; int * chunks_last; int * chunks_first; } ;


 int log_assert (int ) ;
 int xfr_transfer_nexttarget_or_end (struct auth_xfer*,struct module_env*) ;
 int xfr_transfer_start_list (struct auth_xfer*,struct auth_master*) ;
 int xfr_transfer_start_lookups (struct auth_xfer*) ;

__attribute__((used)) static void
xfr_start_transfer(struct auth_xfer* xfr, struct module_env* env,
 struct auth_master* master)
{
 log_assert(xfr->task_transfer != ((void*)0));
 log_assert(xfr->task_transfer->worker == ((void*)0));
 log_assert(xfr->task_transfer->chunks_first == ((void*)0));
 log_assert(xfr->task_transfer->chunks_last == ((void*)0));
 xfr->task_transfer->worker = env->worker;
 xfr->task_transfer->env = env;



 xfr_transfer_start_list(xfr, master);

 xfr_transfer_start_lookups(xfr);


 xfr_transfer_nexttarget_or_end(xfr, env);
}
