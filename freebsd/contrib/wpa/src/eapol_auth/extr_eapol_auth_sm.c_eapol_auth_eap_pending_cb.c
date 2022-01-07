
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {void* eap; } ;


 int eap_sm_pending_cb (void*) ;
 int eapol_auth_step (struct eapol_state_machine*) ;

int eapol_auth_eap_pending_cb(struct eapol_state_machine *sm, void *ctx)
{
 if (sm == ((void*)0) || ctx == ((void*)0) || ctx != sm->eap)
  return -1;

 eap_sm_pending_cb(sm->eap);
 eapol_auth_step(sm);

 return 0;
}
