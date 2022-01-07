
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int dummy; } ;


 int wpa_sm_step (struct wpa_state_machine*) ;

__attribute__((used)) static void wpa_sm_call_step(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_state_machine *sm = eloop_ctx;
 wpa_sm_step(sm);
}
