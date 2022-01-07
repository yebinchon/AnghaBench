
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ decision; int reqId; int lastId; scalar_t__ methodState; scalar_t__ selectedMethod; scalar_t__ reqMethod; scalar_t__ reauthInit; scalar_t__ rxResp; scalar_t__ rxSuccess; scalar_t__ rxReq; scalar_t__ allowNotifications; scalar_t__ rxFailure; scalar_t__ workaround; } ;


 scalar_t__ DECISION_FAIL ;
 scalar_t__ DECISION_UNCOND_SUCC ;
 int DISCARD ;
 int EAP ;
 scalar_t__ EAP_TYPE_IDENTITY ;
 scalar_t__ EAP_TYPE_LEAP ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_TYPE_NOTIFICATION ;
 int FAILURE ;
 int GET_METHOD ;
 int IDENTITY ;
 int METHOD ;
 scalar_t__ METHOD_CONT ;
 scalar_t__ METHOD_DONE ;
 scalar_t__ METHOD_MAY_CONT ;
 int NOTIFICATION ;
 int RETRANSMIT ;
 int SEND_RESPONSE ;
 int SM_ENTER (int ,int ) ;
 int SUCCESS ;
 int eap_peer_req_is_duplicate (struct eap_sm*) ;
 scalar_t__ eap_peer_sm_allow_canned (struct eap_sm*) ;
 scalar_t__ eap_success_workaround (struct eap_sm*,int,int) ;

__attribute__((used)) static void eap_peer_sm_step_received(struct eap_sm *sm)
{
 int duplicate = eap_peer_req_is_duplicate(sm);






 if (sm->rxSuccess && sm->decision != DECISION_FAIL &&
     (sm->reqId == sm->lastId ||
      eap_success_workaround(sm, sm->reqId, sm->lastId)))
  SM_ENTER(EAP, SUCCESS);
 else if (sm->workaround && sm->lastId == -1 && sm->rxSuccess &&
   !sm->rxFailure && !sm->rxReq && eap_peer_sm_allow_canned(sm))
  SM_ENTER(EAP, SUCCESS);
 else if (sm->workaround && sm->lastId == -1 && sm->rxFailure &&
   !sm->rxReq && sm->methodState != METHOD_CONT &&
   eap_peer_sm_allow_canned(sm))
  SM_ENTER(EAP, FAILURE);
 else if (sm->workaround && sm->rxSuccess && !sm->rxFailure &&
   !sm->rxReq && sm->methodState != METHOD_CONT &&
   eap_peer_sm_allow_canned(sm))
  SM_ENTER(EAP, SUCCESS);
 else if (sm->methodState != METHOD_CONT &&
   ((sm->rxFailure &&
     sm->decision != DECISION_UNCOND_SUCC) ||
    (sm->rxSuccess && sm->decision == DECISION_FAIL &&
     (sm->selectedMethod != EAP_TYPE_LEAP ||
      sm->methodState != METHOD_MAY_CONT))) &&
   (sm->reqId == sm->lastId ||
    eap_success_workaround(sm, sm->reqId, sm->lastId)))
  SM_ENTER(EAP, FAILURE);
 else if (sm->rxReq && duplicate)
  SM_ENTER(EAP, RETRANSMIT);
 else if (sm->rxReq && !duplicate &&
   sm->reqMethod == EAP_TYPE_NOTIFICATION &&
   sm->allowNotifications)
  SM_ENTER(EAP, NOTIFICATION);
 else if (sm->rxReq && !duplicate &&
   sm->selectedMethod == EAP_TYPE_NONE &&
   sm->reqMethod == EAP_TYPE_IDENTITY)
  SM_ENTER(EAP, IDENTITY);
 else if (sm->rxReq && !duplicate &&
   sm->selectedMethod == EAP_TYPE_NONE &&
   sm->reqMethod != EAP_TYPE_IDENTITY &&
   sm->reqMethod != EAP_TYPE_NOTIFICATION)
  SM_ENTER(EAP, GET_METHOD);
 else if (sm->rxReq && !duplicate &&
   sm->reqMethod == sm->selectedMethod &&
   sm->methodState != METHOD_DONE)
  SM_ENTER(EAP, METHOD);
 else if (sm->selectedMethod == EAP_TYPE_LEAP &&
   (sm->rxSuccess || sm->rxResp))
  SM_ENTER(EAP, METHOD);
 else if (sm->reauthInit)
  SM_ENTER(EAP, SEND_RESPONSE);
 else
  SM_ENTER(EAP, DISCARD);
}
