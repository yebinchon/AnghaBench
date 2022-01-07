
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; } ;
struct wpa_ssid {size_t ssid_len; scalar_t__ mode; int num_p2p_clients; int const* p2p_client_list; int id; int const* ssid; int const* bssid; } ;


 size_t ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int os_memmove (int const*,int const*,size_t) ;
 int p2p_config_write (struct wpa_supplicant*) ;
 int wpa_config_remove_network (int ,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ) ;
 int wpas_notify_persistent_group_removed (struct wpa_supplicant*,struct wpa_ssid*) ;
 struct wpa_ssid* wpas_p2p_get_persistent (struct wpa_supplicant*,int const*,int *,int ) ;

__attribute__((used)) static int wpas_remove_stale_groups(void *ctx, const u8 *peer, const u8 *go,
        const u8 *ssid, size_t ssid_len)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct wpa_ssid *s;
 int save_config = 0;
 size_t i;


 while ((s = wpas_p2p_get_persistent(wpa_s, peer, ((void*)0), 0))) {
  if (go && ssid && ssid_len &&
      s->ssid_len == ssid_len &&
      os_memcmp(go, s->bssid, ETH_ALEN) == 0 &&
      os_memcmp(ssid, s->ssid, ssid_len) == 0)
   break;


  if (s->mode != WPAS_MODE_P2P_GO || s->num_p2p_clients <= 1) {
   wpa_dbg(wpa_s, MSG_DEBUG,
    "P2P: Remove stale persistent group id=%d",
    s->id);
   wpas_notify_persistent_group_removed(wpa_s, s);
   wpa_config_remove_network(wpa_s->conf, s->id);
   save_config = 1;
   continue;
  }

  for (i = 0; i < s->num_p2p_clients; i++) {
   if (os_memcmp(s->p2p_client_list + i * 2 * ETH_ALEN,
          peer, ETH_ALEN) != 0)
    continue;

   os_memmove(s->p2p_client_list + i * 2 * ETH_ALEN,
       s->p2p_client_list + (i + 1) * 2 * ETH_ALEN,
       (s->num_p2p_clients - i - 1) * 2 * ETH_ALEN);
   break;
  }
  s->num_p2p_clients--;
  save_config = 1;
 }

 if (save_config)
  p2p_config_write(wpa_s);


 return s != ((void*)0);
}
