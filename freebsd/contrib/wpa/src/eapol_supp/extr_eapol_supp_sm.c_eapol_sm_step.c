
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {scalar_t__ cb_status; TYPE_1__* ctx; int eap; void* changed; int eap_proxy; scalar_t__ use_eap_proxy; } ;
typedef enum eapol_supp_result { ____Placeholder_eapol_supp_result } eapol_supp_result ;
struct TYPE_2__ {int cb_ctx; int (* cb ) (struct eapol_sm*,int,int ) ;} ;


 scalar_t__ EAPOL_CB_IN_PROGRESS ;
 scalar_t__ EAPOL_CB_SUCCESS ;
 int EAPOL_SUPP_RESULT_EXPECTED_FAILURE ;
 int EAPOL_SUPP_RESULT_FAILURE ;
 int EAPOL_SUPP_RESULT_SUCCESS ;
 void* FALSE ;
 int KEY_RX ;
 int SM_STEP_RUN (int ) ;
 int SUPP_BE ;
 int SUPP_PAE ;
 void* TRUE ;
 scalar_t__ eap_peer_sm_step (int ) ;
 scalar_t__ eap_peer_was_failure_expected (int ) ;
 scalar_t__ eap_proxy_sm_step (int ,int ) ;
 int eapol_sm_step_timeout ;
 int eloop_cancel_timeout (int ,int *,struct eapol_sm*) ;
 int eloop_register_timeout (int ,int ,int ,int *,struct eapol_sm*) ;
 int stub1 (struct eapol_sm*,int,int ) ;

void eapol_sm_step(struct eapol_sm *sm)
{
 int i;





 for (i = 0; i < 100; i++) {
  sm->changed = FALSE;
  SM_STEP_RUN(SUPP_PAE);
  SM_STEP_RUN(KEY_RX);
  SM_STEP_RUN(SUPP_BE);







  if (eap_peer_sm_step(sm->eap))
   sm->changed = TRUE;
  if (!sm->changed)
   break;
 }

 if (sm->changed) {


  eloop_cancel_timeout(eapol_sm_step_timeout, ((void*)0), sm);
  eloop_register_timeout(0, 0, eapol_sm_step_timeout, ((void*)0), sm);
 }

 if (sm->ctx->cb && sm->cb_status != EAPOL_CB_IN_PROGRESS) {
  enum eapol_supp_result result;
  if (sm->cb_status == EAPOL_CB_SUCCESS)
   result = EAPOL_SUPP_RESULT_SUCCESS;
  else if (eap_peer_was_failure_expected(sm->eap))
   result = EAPOL_SUPP_RESULT_EXPECTED_FAILURE;
  else
   result = EAPOL_SUPP_RESULT_FAILURE;
  sm->cb_status = EAPOL_CB_IN_PROGRESS;
  sm->ctx->cb(sm, result, sm->ctx->cb_ctx);
 }
}
