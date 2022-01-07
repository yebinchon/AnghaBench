
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int wpa_key_mgmt; } ;



int wpa_auth_sta_key_mgmt(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return -1;
 return sm->wpa_key_mgmt;
}
