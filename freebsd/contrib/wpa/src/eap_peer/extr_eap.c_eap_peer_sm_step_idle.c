
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ decision; scalar_t__ methodState; scalar_t__ selectedMethod; scalar_t__ peap_done; scalar_t__ leap_done; } ;


 scalar_t__ DECISION_FAIL ;
 scalar_t__ DECISION_UNCOND_SUCC ;
 int EAP ;
 int EAPOL_altAccept ;
 int EAPOL_altReject ;
 int EAPOL_eapReq ;
 int EAPOL_idleWhile ;
 scalar_t__ EAP_TYPE_LEAP ;
 scalar_t__ EAP_TYPE_PEAP ;
 int FAILURE ;
 scalar_t__ METHOD_CONT ;
 scalar_t__ METHOD_DONE ;
 int RECEIVED ;
 int SM_ENTER (int ,int ) ;
 int SUCCESS ;
 scalar_t__ eapol_get_bool (struct eap_sm*,int ) ;
 scalar_t__ eapol_get_int (struct eap_sm*,int ) ;

__attribute__((used)) static void eap_peer_sm_step_idle(struct eap_sm *sm)
{





 if (eapol_get_bool(sm, EAPOL_eapReq))
  SM_ENTER(EAP, RECEIVED);
 else if ((eapol_get_bool(sm, EAPOL_altAccept) &&
    sm->decision != DECISION_FAIL) ||
   (eapol_get_int(sm, EAPOL_idleWhile) == 0 &&
    sm->decision == DECISION_UNCOND_SUCC))
  SM_ENTER(EAP, SUCCESS);
 else if (eapol_get_bool(sm, EAPOL_altReject) ||
   (eapol_get_int(sm, EAPOL_idleWhile) == 0 &&
    sm->decision != DECISION_UNCOND_SUCC) ||
   (eapol_get_bool(sm, EAPOL_altAccept) &&
    sm->methodState != METHOD_CONT &&
    sm->decision == DECISION_FAIL))
  SM_ENTER(EAP, FAILURE);
 else if (sm->selectedMethod == EAP_TYPE_LEAP &&
   sm->leap_done && sm->decision != DECISION_FAIL &&
   sm->methodState == METHOD_DONE)
  SM_ENTER(EAP, SUCCESS);
 else if (sm->selectedMethod == EAP_TYPE_PEAP &&
   sm->peap_done && sm->decision != DECISION_FAIL &&
   sm->methodState == METHOD_DONE)
  SM_ENTER(EAP, SUCCESS);
}
