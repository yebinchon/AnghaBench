
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_state_machine {TYPE_1__* group; struct wpa_authenticator* wpa_auth; int p2p_dev_addr; int addr; } ;
struct wpa_authenticator {TYPE_1__* group; } ;
struct TYPE_2__ {scalar_t__ wpa_group_state; } ;


 int ETH_ALEN ;
 scalar_t__ WPA_GROUP_FATAL_FAILURE ;
 int os_memcpy (int ,int const*,int ) ;
 struct wpa_state_machine* os_zalloc (int) ;
 int wpa_group_get (struct wpa_authenticator*,TYPE_1__*) ;

struct wpa_state_machine *
wpa_auth_sta_init(struct wpa_authenticator *wpa_auth, const u8 *addr,
    const u8 *p2p_dev_addr)
{
 struct wpa_state_machine *sm;

 if (wpa_auth->group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
  return ((void*)0);

 sm = os_zalloc(sizeof(struct wpa_state_machine));
 if (sm == ((void*)0))
  return ((void*)0);
 os_memcpy(sm->addr, addr, ETH_ALEN);
 if (p2p_dev_addr)
  os_memcpy(sm->p2p_dev_addr, p2p_dev_addr, ETH_ALEN);

 sm->wpa_auth = wpa_auth;
 sm->group = wpa_auth->group;
 wpa_group_get(sm->wpa_auth, sm->group);

 return sm;
}
