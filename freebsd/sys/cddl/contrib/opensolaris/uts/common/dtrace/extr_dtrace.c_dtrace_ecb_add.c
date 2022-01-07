
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dts_necbs; scalar_t__ dts_activity; TYPE_2__** dts_ecbs; int dts_epid; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_rechdr_t ;
typedef int dtrace_probe_t ;
typedef int dtrace_epid_t ;
struct TYPE_9__ {int dte_size; int dte_needed; int dte_alignment; int dte_epid; TYPE_1__* dte_state; int * dte_probe; int * dte_predicate; } ;
typedef TYPE_2__ dtrace_ecb_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_ACTIVITY_INACTIVE ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int bcopy (TYPE_2__**,TYPE_2__**,int) ;
 int dtrace_lock ;
 int dtrace_membar_producer () ;
 int dtrace_sync () ;
 int kmem_free (TYPE_2__**,int) ;
 void* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_ecb_t *
dtrace_ecb_add(dtrace_state_t *state, dtrace_probe_t *probe)
{
 dtrace_ecb_t *ecb;
 dtrace_epid_t epid;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 ecb = kmem_zalloc(sizeof (dtrace_ecb_t), KM_SLEEP);
 ecb->dte_predicate = ((void*)0);
 ecb->dte_probe = probe;





 ecb->dte_size = ecb->dte_needed = sizeof (dtrace_rechdr_t);
 ecb->dte_alignment = sizeof (dtrace_epid_t);

 epid = state->dts_epid++;

 if (epid - 1 >= state->dts_necbs) {
  dtrace_ecb_t **oecbs = state->dts_ecbs, **ecbs;
  int necbs = state->dts_necbs << 1;

  ASSERT(epid == state->dts_necbs + 1);

  if (necbs == 0) {
   ASSERT(oecbs == ((void*)0));
   necbs = 1;
  }

  ecbs = kmem_zalloc(necbs * sizeof (*ecbs), KM_SLEEP);

  if (oecbs != ((void*)0))
   bcopy(oecbs, ecbs, state->dts_necbs * sizeof (*ecbs));

  dtrace_membar_producer();
  state->dts_ecbs = ecbs;

  if (oecbs != ((void*)0)) {







   if (state->dts_activity != DTRACE_ACTIVITY_INACTIVE)
    dtrace_sync();

   kmem_free(oecbs, state->dts_necbs * sizeof (*ecbs));
  }

  dtrace_membar_producer();
  state->dts_necbs = necbs;
 }

 ecb->dte_state = state;

 ASSERT(state->dts_ecbs[epid - 1] == ((void*)0));
 dtrace_membar_producer();
 state->dts_ecbs[(ecb->dte_epid = epid) - 1] = ecb;

 return (ecb);
}
