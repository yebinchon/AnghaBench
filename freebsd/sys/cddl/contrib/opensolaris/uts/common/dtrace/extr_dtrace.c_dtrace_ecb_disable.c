
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* dtps_disable ) (int ,int ,int ) ;} ;
struct TYPE_8__ {int dtpv_arg; TYPE_1__ dtpv_pops; } ;
typedef TYPE_2__ dtrace_provider_t ;
struct TYPE_9__ {scalar_t__ dtpr_predcache; TYPE_5__* dtpr_ecb; TYPE_5__* dtpr_ecb_last; int dtpr_arg; int dtpr_id; TYPE_2__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;
struct TYPE_10__ {scalar_t__ dtp_cacheid; } ;
typedef TYPE_4__ dtrace_predicate_t ;
struct TYPE_11__ {struct TYPE_11__* dte_next; TYPE_4__* dte_predicate; TYPE_3__* dte_probe; } ;
typedef TYPE_5__ dtrace_ecb_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_CACHEIDNONE ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;
 int dtrace_sync () ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
dtrace_ecb_disable(dtrace_ecb_t *ecb)
{



 dtrace_ecb_t *pecb, *prev = ((void*)0);
 dtrace_probe_t *probe = ecb->dte_probe;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 if (probe == ((void*)0)) {



  return;
 }

 for (pecb = probe->dtpr_ecb; pecb != ((void*)0); pecb = pecb->dte_next) {
  if (pecb == ecb)
   break;
  prev = pecb;
 }

 ASSERT(pecb != ((void*)0));

 if (prev == ((void*)0)) {
  probe->dtpr_ecb = ecb->dte_next;
 } else {
  prev->dte_next = ecb->dte_next;
 }

 if (ecb == probe->dtpr_ecb_last) {
  ASSERT(ecb->dte_next == ((void*)0));
  probe->dtpr_ecb_last = prev;
 }





 dtrace_sync();

 if (probe->dtpr_ecb == ((void*)0)) {





  dtrace_provider_t *prov = probe->dtpr_provider;

  ASSERT(ecb->dte_next == ((void*)0));
  ASSERT(probe->dtpr_ecb_last == ((void*)0));
  probe->dtpr_predcache = DTRACE_CACHEIDNONE;
  prov->dtpv_pops.dtps_disable(prov->dtpv_arg,
      probe->dtpr_id, probe->dtpr_arg);
  dtrace_sync();
 } else {





  ASSERT(probe->dtpr_ecb_last != ((void*)0));
  ASSERT(probe->dtpr_predcache == DTRACE_CACHEIDNONE);

  if (probe->dtpr_ecb == probe->dtpr_ecb_last) {
   dtrace_predicate_t *p = probe->dtpr_ecb->dte_predicate;

   ASSERT(probe->dtpr_ecb->dte_next == ((void*)0));

   if (p != ((void*)0))
    probe->dtpr_predcache = p->dtp_cacheid;
  }

  ecb->dte_next = ((void*)0);
 }
}
