
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fils_pmkid; int fils_pmk_len; int fils_pmk; int fils_erp_next_seq_num; int ptk_kek_len; int ptk_kek; int ptk_kck_len; int ptk_kck; int key_replay_ctr; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef int u8 ;
struct wpa_supplicant {scalar_t__ auth_alg; int wpa; int bssid; int eapol; int wpa_state; } ;
struct wpa_bss {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_AUTH_ALG_FILS ;
 int eapol_sm_update_erp_next_seq_num (int ,int ) ;
 int pmksa_cache_set_current (int ,int ,int *,int *,int ,int *,int ) ;
 struct wpa_bss* wpa_bss_get_bssid (struct wpa_supplicant*,int ) ;
 int * wpa_bss_get_fils_cache_id (struct wpa_bss*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ) ;
 int wpa_sm_pmksa_cache_add (int ,int ,int ,int ,int ,int const*) ;
 int wpa_sm_set_ptk_kck_kek (int ,int ,int ,int ,int ) ;
 int wpa_sm_set_rx_replay_ctr (int ,int ) ;
 int wpa_supplicant_event_port_authorized (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_event_assoc_auth(struct wpa_supplicant *wpa_s,
         union wpa_event_data *data)
{
 wpa_dbg(wpa_s, MSG_DEBUG,
  "Connection authorized by device, previous state %d",
  wpa_s->wpa_state);

 wpa_supplicant_event_port_authorized(wpa_s);

 wpa_sm_set_rx_replay_ctr(wpa_s->wpa, data->assoc_info.key_replay_ctr);
 wpa_sm_set_ptk_kck_kek(wpa_s->wpa, data->assoc_info.ptk_kck,
          data->assoc_info.ptk_kck_len,
          data->assoc_info.ptk_kek,
          data->assoc_info.ptk_kek_len);
}
