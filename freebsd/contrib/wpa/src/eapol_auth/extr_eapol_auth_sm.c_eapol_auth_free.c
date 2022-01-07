
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_state_machine {struct eapol_state_machine* identity; int radius_cui; scalar_t__ eap; } ;


 int eap_server_sm_deinit (scalar_t__) ;
 int eapol_port_timers_tick ;
 int eapol_sm_step_cb ;
 int eloop_cancel_timeout (int ,struct eapol_state_machine*,struct eapol_state_machine*) ;
 int os_free (struct eapol_state_machine*) ;
 int wpabuf_free (int ) ;

void eapol_auth_free(struct eapol_state_machine *sm)
{
 if (sm == ((void*)0))
  return;

 eloop_cancel_timeout(eapol_port_timers_tick, ((void*)0), sm);
 eloop_cancel_timeout(eapol_sm_step_cb, sm, ((void*)0));
 if (sm->eap)
  eap_server_sm_deinit(sm->eap);

 wpabuf_free(sm->radius_cui);
 os_free(sm->identity);
 os_free(sm);
}
