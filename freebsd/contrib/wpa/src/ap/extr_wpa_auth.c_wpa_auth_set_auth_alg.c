
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpa_state_machine {int auth_alg; } ;



void wpa_auth_set_auth_alg(struct wpa_state_machine *sm, u16 auth_alg)
{
 if (sm)
  sm->auth_alg = auth_alg;
}
