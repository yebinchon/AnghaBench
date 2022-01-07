
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int EAP_state; int eapRespData; int decision; int methodState; int ignore; int reqMethod; int selectedMethod; int force_disabled; } ;


 int DECISION_FAIL ;
 int DISCARD ;
 int EAP ;
 int EAPOL_portEnabled ;
 int FAILURE ;
 int IDLE ;
 int INITIALIZE ;
 int METHOD ;
 int METHOD_DONE ;
 int SEND_RESPONSE ;
 int SM_ENTER (int ,int ) ;
 int eap_peer_sm_step_idle (struct eap_sm*) ;
 int eap_peer_sm_step_received (struct eap_sm*) ;
 int eapol_get_bool (struct eap_sm*,int ) ;

__attribute__((used)) static void eap_peer_sm_step_local(struct eap_sm *sm)
{
 switch (sm->EAP_state) {
 case 134:
  SM_ENTER(EAP, IDLE);
  break;
 case 140:
  if (eapol_get_bool(sm, EAPOL_portEnabled) &&
      !sm->force_disabled)
   SM_ENTER(EAP, INITIALIZE);
  break;
 case 135:
  eap_peer_sm_step_idle(sm);
  break;
 case 131:
  eap_peer_sm_step_received(sm);
  break;
 case 137:
  if (sm->selectedMethod == sm->reqMethod)
   SM_ENTER(EAP, METHOD);
  else
   SM_ENTER(EAP, SEND_RESPONSE);
  break;
 case 133:
  if (sm->ignore)
   SM_ENTER(EAP, DISCARD);
  else if (sm->methodState == METHOD_DONE &&
    sm->decision == DECISION_FAIL && !sm->eapRespData)
   SM_ENTER(EAP, FAILURE);
  else
   SM_ENTER(EAP, SEND_RESPONSE);
  break;
 case 129:
  SM_ENTER(EAP, IDLE);
  break;
 case 139:
  SM_ENTER(EAP, IDLE);
  break;
 case 136:
  SM_ENTER(EAP, SEND_RESPONSE);
  break;
 case 132:
  SM_ENTER(EAP, SEND_RESPONSE);
  break;
 case 130:
  SM_ENTER(EAP, SEND_RESPONSE);
  break;
 case 128:
  break;
 case 138:
  break;
 }
}
