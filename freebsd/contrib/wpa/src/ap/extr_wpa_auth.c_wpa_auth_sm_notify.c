
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int dummy; } ;


 int eloop_register_timeout (int ,int ,int ,struct wpa_state_machine*,int *) ;
 int wpa_sm_call_step ;

void wpa_auth_sm_notify(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return;
 eloop_register_timeout(0, 0, wpa_sm_call_step, sm, ((void*)0));
}
