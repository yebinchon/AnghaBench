
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; int eapSuccess; } ;


 int MSG_DEBUG ;
 int TRUE ;
 int eap_notify_success (int ) ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*) ;

void eapol_sm_notify_cached(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: PMKSA caching was used - skip EAPOL");
 sm->eapSuccess = TRUE;
 eap_notify_success(sm->eap);
 eapol_sm_step(sm);
}
