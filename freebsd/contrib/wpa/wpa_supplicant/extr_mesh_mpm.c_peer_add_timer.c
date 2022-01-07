
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ifmsh; } ;
struct hostapd_data {int mesh_required_peer; } ;
struct TYPE_2__ {struct hostapd_data** bss; } ;


 int ETH_ALEN ;
 int os_memset (int ,int ,int ) ;

__attribute__((used)) static void peer_add_timer(void *eloop_ctx, void *user_data)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct hostapd_data *hapd = wpa_s->ifmsh->bss[0];

 os_memset(hapd->mesh_required_peer, 0, ETH_ALEN);
}
