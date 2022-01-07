
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {scalar_t__ wpa_key_mgmt; } ;


 scalar_t__ WPA_KEY_MGMT_FT_SAE ;

int wpa_auth_uses_ft_sae(struct wpa_state_machine *sm)
{
 if (sm == ((void*)0))
  return 0;
 return sm->wpa_key_mgmt == WPA_KEY_MGMT_FT_SAE;
}
