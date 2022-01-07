
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_vstate_t ;
struct TYPE_8__ {TYPE_3__** dts_ecbs; int dts_vstate; } ;
typedef TYPE_2__ dtrace_state_t ;
typedef int dtrace_predicate_t ;
typedef int dtrace_epid_t ;
struct TYPE_9__ {int dte_epid; int * dte_predicate; TYPE_1__* dte_probe; int * dte_next; TYPE_2__* dte_state; } ;
typedef TYPE_3__ dtrace_ecb_t ;
struct TYPE_7__ {TYPE_3__* dtpr_ecb; } ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int dtrace_ecb_action_remove (TYPE_3__*) ;
 int dtrace_lock ;
 int dtrace_predicate_release (int *,int *) ;
 int kmem_free (TYPE_3__*,int) ;

__attribute__((used)) static void
dtrace_ecb_destroy(dtrace_ecb_t *ecb)
{
 dtrace_state_t *state = ecb->dte_state;
 dtrace_vstate_t *vstate = &state->dts_vstate;
 dtrace_predicate_t *pred;
 dtrace_epid_t epid = ecb->dte_epid;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(ecb->dte_next == ((void*)0));
 ASSERT(ecb->dte_probe == ((void*)0) || ecb->dte_probe->dtpr_ecb != ecb);

 if ((pred = ecb->dte_predicate) != ((void*)0))
  dtrace_predicate_release(pred, vstate);

 dtrace_ecb_action_remove(ecb);

 ASSERT(state->dts_ecbs[epid - 1] == ecb);
 state->dts_ecbs[epid - 1] = ((void*)0);

 kmem_free(ecb, sizeof (dtrace_ecb_t));
}
