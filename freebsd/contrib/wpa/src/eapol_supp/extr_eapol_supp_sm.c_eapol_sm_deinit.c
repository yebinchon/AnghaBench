
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {struct eapol_sm* ctx; int eapReqData; struct eapol_sm* last_rx_key; int eap_proxy; int eap; } ;


 int eap_peer_sm_deinit (int ) ;
 int eap_proxy_deinit (int ) ;
 int eapol_port_timers_tick ;
 int eapol_sm_step_timeout ;
 int eloop_cancel_timeout (int ,int *,struct eapol_sm*) ;
 int os_free (struct eapol_sm*) ;
 int wpabuf_free (int ) ;

void eapol_sm_deinit(struct eapol_sm *sm)
{
 if (sm == ((void*)0))
  return;
 eloop_cancel_timeout(eapol_sm_step_timeout, ((void*)0), sm);
 eloop_cancel_timeout(eapol_port_timers_tick, ((void*)0), sm);
 eap_peer_sm_deinit(sm->eap);



 os_free(sm->last_rx_key);
 wpabuf_free(sm->eapReqData);
 os_free(sm->ctx);
 os_free(sm);
}
