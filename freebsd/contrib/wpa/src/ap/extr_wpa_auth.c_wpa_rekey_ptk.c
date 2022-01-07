
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int addr; } ;
struct wpa_authenticator {int dummy; } ;


 int LOGGER_DEBUG ;
 int wpa_auth_logger (struct wpa_authenticator*,int ,int ,char*) ;
 int wpa_request_new_ptk (struct wpa_state_machine*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

__attribute__((used)) static void wpa_rekey_ptk(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_authenticator *wpa_auth = eloop_ctx;
 struct wpa_state_machine *sm = timeout_ctx;

 wpa_auth_logger(wpa_auth, sm->addr, LOGGER_DEBUG, "rekeying PTK");
 wpa_request_new_ptk(sm);
 wpa_sm_step(sm);
}
