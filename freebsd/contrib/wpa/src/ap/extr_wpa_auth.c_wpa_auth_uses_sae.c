
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int wpa_key_mgmt; } ;


 int wpa_key_mgmt_sae (int ) ;

int wpa_auth_uses_sae(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return 0;
 return wpa_key_mgmt_sae(sm->wpa_key_mgmt);
}
