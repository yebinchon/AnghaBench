
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eap; } ;


 int eap_notify_lower_layer_success (int ) ;
 int eapol_sm_step (struct eapol_sm*) ;

void eapol_sm_notify_lower_layer_success(struct eapol_sm *sm, int in_eapol_sm)
{
 if (sm == ((void*)0))
  return;
 eap_notify_lower_layer_success(sm->eap);
 if (!in_eapol_sm)
  eapol_sm_step(sm);
}
