
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {scalar_t__ proto; int bssid; int ptk; TYPE_1__* ctx; int pmk_len; int key_mgmt; } ;
struct wpa_eapol_key {int * replay_counter; int * key_length; int * key_info; int type; } ;
struct wpa_channel_info {int dummy; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 size_t OCV_OCI_KDE_LEN ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_SECURE ;
 scalar_t__ WPA_PROTO_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int WPA_REPLAY_COUNTER_LEN ;
 scalar_t__ ocv_insert_oci_kde (struct wpa_channel_info*,int **) ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,int) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_eapol_key_send (struct wpa_sm*,int *,int,int ,int ,int *,size_t,int *) ;
 size_t wpa_mic_len (int ,int ) ;
 int wpa_printf (int ,char*) ;
 int * wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,size_t,size_t*,void*) ;
 scalar_t__ wpa_sm_channel_info (struct wpa_sm*,struct wpa_channel_info*) ;
 scalar_t__ wpa_sm_ocv_enabled (struct wpa_sm*) ;

__attribute__((used)) static int wpa_supplicant_send_2_of_2(struct wpa_sm *sm,
          const struct wpa_eapol_key *key,
          int ver, u16 key_info)
{
 size_t mic_len, hdrlen, rlen;
 struct wpa_eapol_key *reply;
 u8 *rbuf, *key_mic;
 size_t kde_len = 0;






 mic_len = wpa_mic_len(sm->key_mgmt, sm->pmk_len);
 hdrlen = sizeof(*reply) + mic_len + 2;
 rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY, ((void*)0),
      hdrlen + kde_len, &rlen, (void *) &reply);
 if (rbuf == ((void*)0))
  return -1;

 reply->type = (sm->proto == WPA_PROTO_RSN ||
         sm->proto == WPA_PROTO_OSEN) ?
  EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
 key_info &= WPA_KEY_INFO_KEY_INDEX_MASK;
 key_info |= ver | WPA_KEY_INFO_SECURE;
 if (mic_len)
  key_info |= WPA_KEY_INFO_MIC;
 else
  key_info |= WPA_KEY_INFO_ENCR_KEY_DATA;
 WPA_PUT_BE16(reply->key_info, key_info);
 if (sm->proto == WPA_PROTO_RSN || sm->proto == WPA_PROTO_OSEN)
  WPA_PUT_BE16(reply->key_length, 0);
 else
  os_memcpy(reply->key_length, key->key_length, 2);
 os_memcpy(reply->replay_counter, key->replay_counter,
    WPA_REPLAY_COUNTER_LEN);

 key_mic = (u8 *) (reply + 1);
 WPA_PUT_BE16(key_mic + mic_len, kde_len);
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Sending EAPOL-Key 2/2");
 return wpa_eapol_key_send(sm, &sm->ptk, ver, sm->bssid, ETH_P_EAPOL,
      rbuf, rlen, key_mic);
}
