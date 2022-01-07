
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ dtvs_nlocals; } ;
typedef TYPE_2__ dtrace_vstate_t ;
struct TYPE_15__ {int * dtp_difo; } ;
typedef TYPE_3__ dtrace_predicate_t ;
struct TYPE_16__ {TYPE_5__** dthps_actions; int dthps_generation; TYPE_2__ dthps_vstate; } ;
typedef TYPE_4__ dtrace_helpers_t ;
struct TYPE_17__ {int dtha_nactions; struct TYPE_17__* dtha_next; int ** dtha_actions; int * dtha_predicate; int dtha_generation; } ;
typedef TYPE_5__ dtrace_helper_action_t ;
struct TYPE_13__ {TYPE_3__* dtpdd_predicate; } ;
struct TYPE_18__ {TYPE_7__* dted_action; TYPE_1__ dted_pred; } ;
typedef TYPE_6__ dtrace_ecbdesc_t ;
typedef int dtrace_difo_t ;
struct TYPE_19__ {scalar_t__ dtad_kind; int * dtad_difo; struct TYPE_19__* dtad_next; } ;
typedef TYPE_7__ dtrace_actdesc_t ;


 int ASSERT (int ) ;
 scalar_t__ DTRACEACT_DIFEXPR ;
 int DTRACE_NHELPER_ACTIONS ;
 int EINVAL ;
 int ENOSPC ;
 int KM_SLEEP ;
 int dtrace_difo_hold (int *) ;
 int dtrace_helper_action_destroy (TYPE_5__*,TYPE_2__*) ;
 int dtrace_helper_actions_max ;
 int dtrace_helper_validate (TYPE_5__*) ;
 scalar_t__ dtrace_helptrace_next ;
 scalar_t__ dtrace_helptrace_nlocals ;
 void* kmem_zalloc (int,int ) ;

__attribute__((used)) static int
dtrace_helper_action_add(int which, dtrace_ecbdesc_t *ep,
    dtrace_helpers_t *help)
{
 dtrace_helper_action_t *helper, *last;
 dtrace_actdesc_t *act;
 dtrace_vstate_t *vstate;
 dtrace_predicate_t *pred;
 int count = 0, nactions = 0, i;

 if (which < 0 || which >= DTRACE_NHELPER_ACTIONS)
  return (EINVAL);

 last = help->dthps_actions[which];
 vstate = &help->dthps_vstate;

 for (count = 0; last != ((void*)0); last = last->dtha_next) {
  count++;
  if (last->dtha_next == ((void*)0))
   break;
 }





 if (count >= dtrace_helper_actions_max)
  return (ENOSPC);

 helper = kmem_zalloc(sizeof (dtrace_helper_action_t), KM_SLEEP);
 helper->dtha_generation = help->dthps_generation;

 if ((pred = ep->dted_pred.dtpdd_predicate) != ((void*)0)) {
  ASSERT(pred->dtp_difo != ((void*)0));
  dtrace_difo_hold(pred->dtp_difo);
  helper->dtha_predicate = pred->dtp_difo;
 }

 for (act = ep->dted_action; act != ((void*)0); act = act->dtad_next) {
  if (act->dtad_kind != DTRACEACT_DIFEXPR)
   goto err;

  if (act->dtad_difo == ((void*)0))
   goto err;

  nactions++;
 }

 helper->dtha_actions = kmem_zalloc(sizeof (dtrace_difo_t *) *
     (helper->dtha_nactions = nactions), KM_SLEEP);

 for (act = ep->dted_action, i = 0; act != ((void*)0); act = act->dtad_next) {
  dtrace_difo_hold(act->dtad_difo);
  helper->dtha_actions[i++] = act->dtad_difo;
 }

 if (!dtrace_helper_validate(helper))
  goto err;

 if (last == ((void*)0)) {
  help->dthps_actions[which] = helper;
 } else {
  last->dtha_next = helper;
 }

 if (vstate->dtvs_nlocals > dtrace_helptrace_nlocals) {
  dtrace_helptrace_nlocals = vstate->dtvs_nlocals;
  dtrace_helptrace_next = 0;
 }

 return (0);
err:
 dtrace_helper_action_destroy(helper, vstate);
 return (EINVAL);
}
