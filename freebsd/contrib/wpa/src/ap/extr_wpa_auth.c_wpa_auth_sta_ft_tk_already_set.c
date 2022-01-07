
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int tk_already_set; int wpa_key_mgmt; } ;


 int wpa_key_mgmt_ft (int ) ;

int wpa_auth_sta_ft_tk_already_set(struct wpa_state_machine *sm)
{
 if (!sm || !wpa_key_mgmt_ft(sm->wpa_key_mgmt))
  return 0;
 return sm->tk_already_set;
}
