
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int p_pid; TYPE_2__* p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;
typedef int dtrace_vstate_t ;
struct TYPE_10__ {int dthps_generation; int dthps_nprovs; TYPE_3__** dthps_provs; TYPE_4__** dthps_actions; int dthps_vstate; } ;
typedef TYPE_2__ dtrace_helpers_t ;
struct TYPE_11__ {int dthp_generation; int dthp_prov; } ;
typedef TYPE_3__ dtrace_helper_provider_t ;
struct TYPE_12__ {int dtha_generation; struct TYPE_12__* dtha_next; } ;
typedef TYPE_4__ dtrace_helper_action_t ;


 int ASSERT (int ) ;
 int DTRACE_NHELPER_ACTIONS ;
 int EINVAL ;
 int MUTEX_HELD (int *) ;
 TYPE_1__* curproc ;
 int * dtrace_deferred_pid ;
 int dtrace_helper_action_destroy (TYPE_4__*,int *) ;
 int dtrace_helper_provider_destroy (TYPE_3__*) ;
 int dtrace_helper_provider_remove (int *,int ) ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 int * dtrace_meta_pid ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
dtrace_helper_destroygen(dtrace_helpers_t *help, int gen)
{
 proc_t *p = curproc;
 dtrace_vstate_t *vstate;
 int i;

 if (help == ((void*)0))
  help = p->p_dtrace_helpers;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 if (help == ((void*)0) || gen > help->dthps_generation)
  return (EINVAL);

 vstate = &help->dthps_vstate;

 for (i = 0; i < DTRACE_NHELPER_ACTIONS; i++) {
  dtrace_helper_action_t *last = ((void*)0), *h, *next;

  for (h = help->dthps_actions[i]; h != ((void*)0); h = next) {
   next = h->dtha_next;

   if (h->dtha_generation == gen) {
    if (last != ((void*)0)) {
     last->dtha_next = next;
    } else {
     help->dthps_actions[i] = next;
    }

    dtrace_helper_action_destroy(h, vstate);
   } else {
    last = h;
   }
  }
 }





 for (;;) {
  dtrace_helper_provider_t *prov;







  for (i = 0; i < help->dthps_nprovs; i++) {
   prov = help->dthps_provs[i];

   if (prov->dthp_generation == gen)
    break;
  }




  if (i == help->dthps_nprovs)
   break;




  help->dthps_nprovs--;
  help->dthps_provs[i] = help->dthps_provs[help->dthps_nprovs];
  help->dthps_provs[help->dthps_nprovs] = ((void*)0);

  mutex_exit(&dtrace_lock);




  mutex_enter(&dtrace_meta_lock);
  if (dtrace_meta_pid != ((void*)0)) {
   ASSERT(dtrace_deferred_pid == ((void*)0));
   dtrace_helper_provider_remove(&prov->dthp_prov,
       p->p_pid);
  }
  mutex_exit(&dtrace_meta_lock);

  dtrace_helper_provider_destroy(prov);

  mutex_enter(&dtrace_lock);
 }

 return (0);
}
