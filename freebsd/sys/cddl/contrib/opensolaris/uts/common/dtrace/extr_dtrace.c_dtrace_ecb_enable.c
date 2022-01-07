
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* dtps_enable ) (int ,int ,int ) ;} ;
struct TYPE_9__ {int dtpv_arg; TYPE_2__ dtpv_pops; } ;
typedef TYPE_3__ dtrace_provider_t ;
struct TYPE_10__ {scalar_t__ dtpr_predcache; TYPE_5__* dtpr_ecb_last; int dtpr_arg; int dtpr_id; TYPE_5__* dtpr_ecb; TYPE_3__* dtpr_provider; } ;
typedef TYPE_4__ dtrace_probe_t ;
struct TYPE_11__ {struct TYPE_11__* dte_next; TYPE_1__* dte_predicate; TYPE_4__* dte_probe; } ;
typedef TYPE_5__ dtrace_ecb_t ;
struct TYPE_7__ {scalar_t__ dtp_cacheid; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int cpu_lock ;
 int dtrace_lock ;
 int dtrace_sync () ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
dtrace_ecb_enable(dtrace_ecb_t *ecb)
{
 dtrace_probe_t *probe = ecb->dte_probe;

 ASSERT(MUTEX_HELD(&cpu_lock));
 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(ecb->dte_next == ((void*)0));

 if (probe == ((void*)0)) {



  return;
 }

 if (probe->dtpr_ecb == ((void*)0)) {
  dtrace_provider_t *prov = probe->dtpr_provider;




  probe->dtpr_ecb = probe->dtpr_ecb_last = ecb;

  if (ecb->dte_predicate != ((void*)0))
   probe->dtpr_predcache = ecb->dte_predicate->dtp_cacheid;

  prov->dtpv_pops.dtps_enable(prov->dtpv_arg,
      probe->dtpr_id, probe->dtpr_arg);
 } else {





  ASSERT(probe->dtpr_ecb_last != ((void*)0));
  probe->dtpr_ecb_last->dte_next = ecb;
  probe->dtpr_ecb_last = ecb;
  probe->dtpr_predcache = 0;

  dtrace_sync();
 }
}
