
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_27__ {int dcr_visible; } ;
struct TYPE_29__ {TYPE_2__ dts_cred; } ;
typedef TYPE_4__ dtrace_state_t ;
struct TYPE_28__ {int dtpp_flags; } ;
struct TYPE_30__ {TYPE_3__ dtpv_priv; } ;
typedef TYPE_5__ dtrace_provider_t ;
struct TYPE_31__ {TYPE_5__* dtpr_provider; } ;
typedef TYPE_6__ dtrace_probe_t ;
typedef int dtrace_predicate_t ;
struct TYPE_32__ {int dten_error; TYPE_8__* dten_current; } ;
typedef TYPE_7__ dtrace_enabling_t ;
struct TYPE_26__ {int * dtpdd_predicate; } ;
struct TYPE_33__ {TYPE_11__* dted_action; TYPE_1__ dted_pred; int dted_uarg; } ;
typedef TYPE_8__ dtrace_ecbdesc_t ;
struct TYPE_34__ {int dte_alignment; int dte_size; int dte_needed; int dte_action_last; TYPE_10__* dte_action; int dte_cond; int * dte_predicate; int dte_uarg; } ;
typedef TYPE_9__ dtrace_ecb_t ;
struct TYPE_24__ {scalar_t__ dta_refcnt; } ;
typedef TYPE_10__ dtrace_action_t ;
struct TYPE_25__ {struct TYPE_25__* dtad_next; } ;
typedef TYPE_11__ dtrace_actdesc_t ;


 int ASSERT (int) ;
 int DTRACE_COND_OWNER ;
 int DTRACE_COND_USERMODE ;
 int DTRACE_COND_ZONEOWNER ;
 int DTRACE_CRV_ALLPROC ;
 int DTRACE_CRV_ALLZONE ;
 int DTRACE_CRV_KERNEL ;
 int DTRACE_PRIV_KERNEL ;
 int DTRACE_PRIV_USER ;
 int MUTEX_HELD (int *) ;
 int dtrace_ecb_action_add (TYPE_9__*,TYPE_11__*) ;
 TYPE_9__* dtrace_ecb_add (TYPE_4__*,TYPE_6__*) ;
 TYPE_9__* dtrace_ecb_create_cache ;
 int dtrace_ecb_destroy (TYPE_9__*) ;
 int dtrace_ecb_resize (TYPE_9__*) ;
 int dtrace_lock ;
 int dtrace_predicate_hold (int *) ;

__attribute__((used)) static dtrace_ecb_t *
dtrace_ecb_create(dtrace_state_t *state, dtrace_probe_t *probe,
    dtrace_enabling_t *enab)
{
 dtrace_ecb_t *ecb;
 dtrace_predicate_t *pred;
 dtrace_actdesc_t *act;
 dtrace_provider_t *prov;
 dtrace_ecbdesc_t *desc = enab->dten_current;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(state != ((void*)0));

 ecb = dtrace_ecb_add(state, probe);
 ecb->dte_uarg = desc->dted_uarg;

 if ((pred = desc->dted_pred.dtpdd_predicate) != ((void*)0)) {
  dtrace_predicate_hold(pred);
  ecb->dte_predicate = pred;
 }

 if (probe != ((void*)0)) {
  prov = probe->dtpr_provider;
  if (!(state->dts_cred.dcr_visible & DTRACE_CRV_ALLPROC) &&
      (prov->dtpv_priv.dtpp_flags & DTRACE_PRIV_USER))
   ecb->dte_cond |= DTRACE_COND_OWNER;

  if (!(state->dts_cred.dcr_visible & DTRACE_CRV_ALLZONE) &&
      (prov->dtpv_priv.dtpp_flags & DTRACE_PRIV_USER))
   ecb->dte_cond |= DTRACE_COND_ZONEOWNER;






  if (!(state->dts_cred.dcr_visible & DTRACE_CRV_KERNEL) &&
      (prov->dtpv_priv.dtpp_flags & DTRACE_PRIV_KERNEL))
   ecb->dte_cond |= DTRACE_COND_USERMODE;
 }

 if (dtrace_ecb_create_cache != ((void*)0)) {




  dtrace_ecb_t *cached = dtrace_ecb_create_cache;
  dtrace_action_t *act = cached->dte_action;

  if (act != ((void*)0)) {
   ASSERT(act->dta_refcnt > 0);
   act->dta_refcnt++;
   ecb->dte_action = act;
   ecb->dte_action_last = cached->dte_action_last;
   ecb->dte_needed = cached->dte_needed;
   ecb->dte_size = cached->dte_size;
   ecb->dte_alignment = cached->dte_alignment;
  }

  return (ecb);
 }

 for (act = desc->dted_action; act != ((void*)0); act = act->dtad_next) {
  if ((enab->dten_error = dtrace_ecb_action_add(ecb, act)) != 0) {
   dtrace_ecb_destroy(ecb);
   return (((void*)0));
  }
 }

 if ((enab->dten_error = dtrace_ecb_resize(ecb)) != 0) {
  dtrace_ecb_destroy(ecb);
  return (((void*)0));
 }

 return (dtrace_ecb_create_cache = ecb);
}
