
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef size_t u16 ;
struct wpa_sm {size_t assoc_resp_ies_len; scalar_t__ proto; TYPE_1__* ctx; int pmk_len; int key_mgmt; int const* assoc_resp_ies; int pmk_r1_name; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int const* key_nonce; int const* replay_counter; int const* key_length; int const* key_info; int type; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 scalar_t__ PMKID_LEN ;
 size_t WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_KEY_TYPE ;
 size_t WPA_KEY_INFO_MIC ;
 size_t WPA_NONCE_LEN ;
 scalar_t__ WPA_PROTO_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (int const*,size_t) ;
 size_t WPA_REPLAY_COUNTER_LEN ;
 int os_free (int const*) ;
 int const* os_malloc (scalar_t__) ;
 int os_memcpy (int const*,int const*,size_t) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_eapol_key_send (struct wpa_sm*,struct wpa_ptk*,int,unsigned char const*,int ,int const*,size_t,int const*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_insert_pmkid (int const*,size_t*,int ) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 size_t wpa_mic_len (int ,int ) ;
 int wpa_msg (int ,int ,char*) ;
 int const* wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,size_t,size_t*,void*) ;

int wpa_supplicant_send_2_of_4(struct wpa_sm *sm, const unsigned char *dst,
          const struct wpa_eapol_key *key,
          int ver, const u8 *nonce,
          const u8 *wpa_ie, size_t wpa_ie_len,
          struct wpa_ptk *ptk)
{
 size_t mic_len, hdrlen, rlen;
 struct wpa_eapol_key *reply;
 u8 *rbuf, *key_mic;
 u8 *rsn_ie_buf = ((void*)0);
 u16 key_info;

 if (wpa_ie == ((void*)0)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING, "WPA: No wpa_ie set - "
   "cannot generate msg 2/4");
  return -1;
 }
 wpa_hexdump(MSG_DEBUG, "WPA: WPA IE for msg 2/4", wpa_ie, wpa_ie_len);

 mic_len = wpa_mic_len(sm->key_mgmt, sm->pmk_len);
 hdrlen = sizeof(*reply) + mic_len + 2;
 rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY,
      ((void*)0), hdrlen + wpa_ie_len,
      &rlen, (void *) &reply);
 if (rbuf == ((void*)0)) {
  os_free(rsn_ie_buf);
  return -1;
 }

 reply->type = (sm->proto == WPA_PROTO_RSN ||
         sm->proto == WPA_PROTO_OSEN) ?
  EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
 key_info = ver | WPA_KEY_INFO_KEY_TYPE;
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
 wpa_hexdump(MSG_DEBUG, "WPA: Replay Counter", reply->replay_counter,
      WPA_REPLAY_COUNTER_LEN);

 key_mic = (u8 *) (reply + 1);
 WPA_PUT_BE16(key_mic + mic_len, wpa_ie_len);
 os_memcpy(key_mic + mic_len + 2, wpa_ie, wpa_ie_len);
 os_free(rsn_ie_buf);

 os_memcpy(reply->key_nonce, nonce, WPA_NONCE_LEN);

 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Sending EAPOL-Key 2/4");
 return wpa_eapol_key_send(sm, ptk, ver, dst, ETH_P_EAPOL, rbuf, rlen,
      key_mic);
}
