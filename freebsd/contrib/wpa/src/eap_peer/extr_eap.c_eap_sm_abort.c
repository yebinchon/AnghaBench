
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int * eapSessionId; int * eapRespData; int * lastRespData; } ;


 int EAPOL_eapSuccess ;
 int FALSE ;
 int eap_sm_free_key (struct eap_sm*) ;
 int eapol_set_bool (struct eap_sm*,int ,int ) ;
 int os_free (int *) ;
 int wpabuf_free (int *) ;

void eap_sm_abort(struct eap_sm *sm)
{
 wpabuf_free(sm->lastRespData);
 sm->lastRespData = ((void*)0);
 wpabuf_free(sm->eapRespData);
 sm->eapRespData = ((void*)0);
 eap_sm_free_key(sm);
 os_free(sm->eapSessionId);
 sm->eapSessionId = ((void*)0);




 eapol_set_bool(sm, EAPOL_eapSuccess, FALSE);
}
