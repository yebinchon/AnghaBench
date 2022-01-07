
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int wpa; } ;



int wpa_auth_sta_wpa_version(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return 0;
 return sm->wpa;
}
