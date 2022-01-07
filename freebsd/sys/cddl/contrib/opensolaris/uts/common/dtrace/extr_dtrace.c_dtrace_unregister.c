
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int task_func_t ;
struct TYPE_13__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;int (* dtps_destroy ) (int ,scalar_t__,int ) ;} ;
struct TYPE_14__ {scalar_t__ dtpv_defunct; struct TYPE_14__* dtpv_name; struct TYPE_14__* dtpv_next; scalar_t__ dtpr_id; struct TYPE_14__* dtpr_name; struct TYPE_14__* dtpr_func; struct TYPE_14__* dtpr_mod; int dtpr_arg; int dtpv_arg; TYPE_2__ dtpv_pops; struct TYPE_14__* dtpr_nextmod; struct TYPE_14__* dtpr_provider; int * dtpr_ecb; } ;
typedef TYPE_3__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
typedef TYPE_3__ dtrace_probe_t ;
struct TYPE_12__ {scalar_t__ dts_necbs; } ;
struct TYPE_11__ {TYPE_1__* dta_state; } ;


 int ASSERT (int) ;
 int EAGAIN ;
 int EBUSY ;
 int MUTEX_HELD (int *) ;
 int TQ_SLEEP ;
 TYPE_10__ dtrace_anon ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int * dtrace_devi ;
 scalar_t__ dtrace_enabling_reap ;
 scalar_t__ dtrace_gethrtime () ;
 int dtrace_hash_remove (int ,TYPE_3__*) ;
 int dtrace_lock ;
 int dtrace_nprobes ;
 scalar_t__ dtrace_nullop ;
 scalar_t__ dtrace_opens ;
 TYPE_3__** dtrace_probes ;
 TYPE_3__* dtrace_provider ;
 int dtrace_provider_lock ;
 int dtrace_sync () ;
 int dtrace_taskq ;
 scalar_t__ dtrace_unregister_defunct_reap ;
 int free_unr (int ,scalar_t__) ;
 int kmem_free (TYPE_3__*,int) ;
 int mod_lock ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*,void*) ;
 int strlen (TYPE_3__*) ;
 int stub1 (int ,scalar_t__,int ) ;
 int taskq_dispatch (int ,int *,int *,int ) ;
 int vmem_free (int ,void*,int) ;

int
dtrace_unregister(dtrace_provider_id_t id)
{
 dtrace_provider_t *old = (dtrace_provider_t *)id;
 dtrace_provider_t *prev = ((void*)0);
 int i, self = 0, noreap = 0;
 dtrace_probe_t *probe, *first = ((void*)0);

 if (old->dtpv_pops.dtps_enable ==
     (void (*)(void *, dtrace_id_t, void *))dtrace_nullop) {




  ASSERT(old == dtrace_provider);



  ASSERT(MUTEX_HELD(&dtrace_provider_lock));
  ASSERT(MUTEX_HELD(&dtrace_lock));
  self = 1;

  if (dtrace_provider->dtpv_next != ((void*)0)) {



   return (EBUSY);
  }
 } else {
  mutex_enter(&dtrace_provider_lock);



  mutex_enter(&dtrace_lock);
 }






 if (!old->dtpv_defunct &&
     (dtrace_opens || (dtrace_anon.dta_state != ((void*)0) &&
     dtrace_anon.dta_state->dts_necbs > 0))) {
  if (!self) {
   mutex_exit(&dtrace_lock);



   mutex_exit(&dtrace_provider_lock);
  }
  return (EBUSY);
 }




 for (i = 0; i < dtrace_nprobes; i++) {
  if ((probe = dtrace_probes[i]) == ((void*)0))
   continue;

  if (probe->dtpr_provider != old)
   continue;

  if (probe->dtpr_ecb == ((void*)0))
   continue;
  if (dtrace_gethrtime() - old->dtpv_defunct >
      dtrace_unregister_defunct_reap)
   noreap = 1;

  if (!self) {
   mutex_exit(&dtrace_lock);



   mutex_exit(&dtrace_provider_lock);
  }

  if (noreap)
   return (EBUSY);

  (void) taskq_dispatch(dtrace_taskq,
      (task_func_t *)dtrace_enabling_reap, ((void*)0), TQ_SLEEP);

  return (EAGAIN);
 }





 for (i = 0; i < dtrace_nprobes; i++) {
  if ((probe = dtrace_probes[i]) == ((void*)0))
   continue;

  if (probe->dtpr_provider != old)
   continue;

  dtrace_probes[i] = ((void*)0);

  dtrace_hash_remove(dtrace_bymod, probe);
  dtrace_hash_remove(dtrace_byfunc, probe);
  dtrace_hash_remove(dtrace_byname, probe);

  if (first == ((void*)0)) {
   first = probe;
   probe->dtpr_nextmod = ((void*)0);
  } else {
   probe->dtpr_nextmod = first;
   first = probe;
  }
 }






 dtrace_sync();

 for (probe = first; probe != ((void*)0); probe = first) {
  first = probe->dtpr_nextmod;

  old->dtpv_pops.dtps_destroy(old->dtpv_arg, probe->dtpr_id,
      probe->dtpr_arg);
  kmem_free(probe->dtpr_mod, strlen(probe->dtpr_mod) + 1);
  kmem_free(probe->dtpr_func, strlen(probe->dtpr_func) + 1);
  kmem_free(probe->dtpr_name, strlen(probe->dtpr_name) + 1);



  free_unr(dtrace_arena, probe->dtpr_id);

  kmem_free(probe, sizeof (dtrace_probe_t));
 }

 if ((prev = dtrace_provider) == old) {




  dtrace_provider = old->dtpv_next;
 } else {
  while (prev != ((void*)0) && prev->dtpv_next != old)
   prev = prev->dtpv_next;

  if (prev == ((void*)0)) {
   panic("attempt to unregister non-existent "
       "dtrace provider %p\n", (void *)id);
  }

  prev->dtpv_next = old->dtpv_next;
 }

 if (!self) {
  mutex_exit(&dtrace_lock);



  mutex_exit(&dtrace_provider_lock);
 }

 kmem_free(old->dtpv_name, strlen(old->dtpv_name) + 1);
 kmem_free(old, sizeof (dtrace_provider_t));

 return (0);
}
