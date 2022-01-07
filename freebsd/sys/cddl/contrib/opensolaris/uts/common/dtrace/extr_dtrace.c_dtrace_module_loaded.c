
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int task_func_t ;
struct TYPE_8__ {int mod_busy; } ;
typedef TYPE_2__ modctl_t ;
struct TYPE_7__ {int (* dtps_provide_module ) (int ,TYPE_2__*) ;} ;
struct TYPE_9__ {int dtpv_arg; TYPE_1__ dtpv_pops; struct TYPE_9__* dtpv_next; } ;
typedef TYPE_3__ dtrace_provider_t ;


 int ASSERT (int ) ;
 int TQ_SLEEP ;
 int delay (int) ;
 scalar_t__ dtrace_enabling_matchall ;
 int dtrace_lock ;
 TYPE_3__* dtrace_provider ;
 int dtrace_provider_lock ;
 int * dtrace_retained ;
 int dtrace_taskq ;
 int mod_lock ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (int ,TYPE_2__*) ;
 int taskq_dispatch (int ,int *,int *,int ) ;

__attribute__((used)) static void
dtrace_module_loaded(modctl_t *ctl)
{
 dtrace_provider_t *prv;

 mutex_enter(&dtrace_provider_lock);
 for (prv = dtrace_provider; prv != ((void*)0); prv = prv->dtpv_next)
  prv->dtpv_pops.dtps_provide_module(prv->dtpv_arg, ctl);




 mutex_exit(&dtrace_provider_lock);
 mutex_enter(&dtrace_lock);

 if (dtrace_retained == ((void*)0)) {
  mutex_exit(&dtrace_lock);
  return;
 }

 (void) taskq_dispatch(dtrace_taskq,
     (task_func_t *)dtrace_enabling_matchall, ((void*)0), TQ_SLEEP);

 mutex_exit(&dtrace_lock);
 delay(1);
}
