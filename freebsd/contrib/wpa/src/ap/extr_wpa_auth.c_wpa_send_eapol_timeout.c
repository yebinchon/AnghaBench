
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int TimeoutEvt; int addr; scalar_t__ pending_1_of_4_timeout; } ;
struct wpa_authenticator {int dummy; } ;


 int LOGGER_DEBUG ;
 int TRUE ;
 int wpa_auth_logger (struct wpa_authenticator*,int ,int ,char*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

__attribute__((used)) static void wpa_send_eapol_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_authenticator *wpa_auth = eloop_ctx;
 struct wpa_state_machine *sm = timeout_ctx;

 sm->pending_1_of_4_timeout = 0;
 wpa_auth_logger(wpa_auth, sm->addr, LOGGER_DEBUG, "EAPOL-Key timeout");
 sm->TimeoutEvt = TRUE;
 wpa_sm_step(sm);
}
