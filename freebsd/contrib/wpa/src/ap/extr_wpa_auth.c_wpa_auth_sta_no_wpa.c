
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {scalar_t__ wpa_key_mgmt; } ;



void wpa_auth_sta_no_wpa(struct wpa_state_machine *sm)
{



 if (sm == ((void*)0))
  return;

 sm->wpa_key_mgmt = 0;
}
