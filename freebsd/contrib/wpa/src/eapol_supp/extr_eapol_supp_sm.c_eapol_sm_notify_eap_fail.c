
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {void* altReject; void* eapFail; } ;
typedef void* Boolean ;


 int MSG_DEBUG ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*,void*) ;

void eapol_sm_notify_eap_fail(struct eapol_sm *sm, Boolean fail)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: External notification - "
     "EAP fail=%d", fail);
 sm->eapFail = fail;
 sm->altReject = fail;
 eapol_sm_step(sm);
}
