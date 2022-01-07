
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {void* eapReq; void* eapolEap; scalar_t__ eapReqData; } ;


 int MSG_DEBUG ;
 void* TRUE ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*) ;

void eapol_sm_notify_ctrl_response(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return;
 if (sm->eapReqData && !sm->eapReq) {
  wpa_printf(MSG_DEBUG, "EAPOL: received control response (user "
      "input) notification - retrying pending EAP "
      "Request");
  sm->eapolEap = TRUE;
  sm->eapReq = TRUE;
  eapol_sm_step(sm);
 }
}
