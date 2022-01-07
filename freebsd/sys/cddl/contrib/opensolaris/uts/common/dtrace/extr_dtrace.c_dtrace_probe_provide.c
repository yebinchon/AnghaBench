
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * mod_mp; scalar_t__ mod_busy; struct TYPE_9__* mod_next; } ;
typedef TYPE_2__ modctl_t ;
struct TYPE_8__ {int (* dtps_provide_module ) (int ,TYPE_2__*) ;int (* dtps_provide ) (int ,int *) ;} ;
struct TYPE_10__ {int dtpv_arg; TYPE_1__ dtpv_pops; struct TYPE_10__* dtpv_next; } ;
typedef TYPE_3__ dtrace_provider_t ;
typedef int dtrace_probedesc_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 TYPE_3__* dtrace_provider ;
 int dtrace_provider_lock ;
 int mod_lock ;
 TYPE_2__ modules ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static void
dtrace_probe_provide(dtrace_probedesc_t *desc, dtrace_provider_t *prv)
{



 int all = 0;

 ASSERT(MUTEX_HELD(&dtrace_provider_lock));

 if (prv == ((void*)0)) {
  all = 1;
  prv = dtrace_provider;
 }

 do {



  prv->dtpv_pops.dtps_provide(prv->dtpv_arg, desc);
 } while (all && (prv = prv->dtpv_next) != ((void*)0));
}
