
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2p_group; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 scalar_t__ p2p_get_group_num_members (int ) ;
 int p2p_is_active_persistent_go (struct wpa_supplicant*) ;

__attribute__((used)) static struct wpa_supplicant *
wpas_p2p_get_go_group(struct wpa_supplicant *wpa_s)
{
 struct wpa_supplicant *save = ((void*)0);

 if (!wpa_s)
  return ((void*)0);

 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (!p2p_is_active_persistent_go(wpa_s))
   continue;


  if (p2p_get_group_num_members(wpa_s->p2p_group))
   return wpa_s;
  save = wpa_s;
 }


 return save;
}
