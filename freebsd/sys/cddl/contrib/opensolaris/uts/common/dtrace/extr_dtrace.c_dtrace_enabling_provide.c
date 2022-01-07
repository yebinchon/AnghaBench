
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* dtps_provide ) (void*,int *) ;} ;
struct TYPE_11__ {TYPE_2__ dtpv_pops; void* dtpv_arg; struct TYPE_11__* dtpv_next; } ;
typedef TYPE_3__ dtrace_provider_t ;
typedef int dtrace_probedesc_t ;
typedef scalar_t__ dtrace_genid_t ;
struct TYPE_12__ {int dten_ndesc; TYPE_1__** dten_desc; struct TYPE_12__* dten_next; } ;
typedef TYPE_4__ dtrace_enabling_t ;
struct TYPE_9__ {int dted_probe; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;
 int dtrace_probe_provide (int *,TYPE_3__*) ;
 TYPE_3__* dtrace_provider ;
 int dtrace_provider_lock ;
 TYPE_4__* dtrace_retained ;
 scalar_t__ dtrace_retained_gen ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (void*,int *) ;

__attribute__((used)) static void
dtrace_enabling_provide(dtrace_provider_t *prv)
{
 int i, all = 0;
 dtrace_probedesc_t desc;
 dtrace_genid_t gen;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(MUTEX_HELD(&dtrace_provider_lock));

 if (prv == ((void*)0)) {
  all = 1;
  prv = dtrace_provider;
 }

 do {
  dtrace_enabling_t *enab;
  void *parg = prv->dtpv_arg;

retry:
  gen = dtrace_retained_gen;
  for (enab = dtrace_retained; enab != ((void*)0);
      enab = enab->dten_next) {
   for (i = 0; i < enab->dten_ndesc; i++) {
    desc = enab->dten_desc[i]->dted_probe;
    mutex_exit(&dtrace_lock);
    prv->dtpv_pops.dtps_provide(parg, &desc);
    mutex_enter(&dtrace_lock);





    if (gen != dtrace_retained_gen)
     goto retry;
   }
  }
 } while (all && (prv = prv->dtpv_next) != ((void*)0));

 mutex_exit(&dtrace_lock);
 dtrace_probe_provide(((void*)0), all ? ((void*)0) : prv);
 mutex_enter(&dtrace_lock);
}
