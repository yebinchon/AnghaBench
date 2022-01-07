
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; void* altAccept; void* eapSuccess; } ;
typedef void* Boolean ;


 int MSG_DEBUG ;
 int eap_notify_success (int ) ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*,void*) ;

void eapol_sm_notify_eap_success(struct eapol_sm *sm, Boolean success)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: External notification - "
     "EAP success=%d", success);
 sm->eapSuccess = success;
 sm->altAccept = success;
 if (success)
  eap_notify_success(sm->eap);
 eapol_sm_step(sm);
}
