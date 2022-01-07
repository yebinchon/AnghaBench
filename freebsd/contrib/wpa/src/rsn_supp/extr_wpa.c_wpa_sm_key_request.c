
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ proto; int ptk; scalar_t__ ptk_set; TYPE_1__* ctx; int request_counter; int pmk_len; int key_mgmt; } ;
struct wpa_eapol_key {int replay_counter; int * key_length; int * key_info; int type; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_ALEN ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_INFO ;
 int MSG_WARNING ;
 scalar_t__ WPA_CIPHER_TKIP ;
 int WPA_KEY_INFO_ERROR ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SECURE ;
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ;
 int WPA_KEY_INFO_TYPE_AKM_DEFINED ;
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 scalar_t__ WPA_PROTO_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (int *,int) ;
 int WPA_REPLAY_COUNTER_LEN ;
 int inc_byte_array (int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 int wpa_eapol_key_send (struct wpa_sm*,int *,int,int *,int ,int *,size_t,int *) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 scalar_t__ wpa_key_mgmt_sha256 (int ) ;
 size_t wpa_mic_len (int ,int ) ;
 int wpa_msg (int ,int ,char*,...) ;
 int * wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,size_t,size_t*,void*) ;
 scalar_t__ wpa_sm_get_bssid (struct wpa_sm*,int *) ;
 scalar_t__ wpa_use_akm_defined (int ) ;

void wpa_sm_key_request(struct wpa_sm *sm, int error, int pairwise)
{
 size_t mic_len, hdrlen, rlen;
 struct wpa_eapol_key *reply;
 int key_info, ver;
 u8 bssid[ETH_ALEN], *rbuf, *key_mic, *mic;

 if (wpa_use_akm_defined(sm->key_mgmt))
  ver = WPA_KEY_INFO_TYPE_AKM_DEFINED;
 else if (wpa_key_mgmt_ft(sm->key_mgmt) ||
   wpa_key_mgmt_sha256(sm->key_mgmt))
  ver = WPA_KEY_INFO_TYPE_AES_128_CMAC;
 else if (sm->pairwise_cipher != WPA_CIPHER_TKIP)
  ver = WPA_KEY_INFO_TYPE_HMAC_SHA1_AES;
 else
  ver = WPA_KEY_INFO_TYPE_HMAC_MD5_RC4;

 if (wpa_sm_get_bssid(sm, bssid) < 0) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "Failed to read BSSID for EAPOL-Key request");
  return;
 }

 mic_len = wpa_mic_len(sm->key_mgmt, sm->pmk_len);
 hdrlen = sizeof(*reply) + mic_len + 2;
 rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY, ((void*)0),
      hdrlen, &rlen, (void *) &reply);
 if (rbuf == ((void*)0))
  return;

 reply->type = (sm->proto == WPA_PROTO_RSN ||
         sm->proto == WPA_PROTO_OSEN) ?
  EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
 key_info = WPA_KEY_INFO_REQUEST | ver;
 if (sm->ptk_set)
  key_info |= WPA_KEY_INFO_SECURE;
 if (sm->ptk_set && mic_len)
  key_info |= WPA_KEY_INFO_MIC;
 if (error)
  key_info |= WPA_KEY_INFO_ERROR;
 if (pairwise)
  key_info |= WPA_KEY_INFO_KEY_TYPE;
 WPA_PUT_BE16(reply->key_info, key_info);
 WPA_PUT_BE16(reply->key_length, 0);
 os_memcpy(reply->replay_counter, sm->request_counter,
    WPA_REPLAY_COUNTER_LEN);
 inc_byte_array(sm->request_counter, WPA_REPLAY_COUNTER_LEN);

 mic = (u8 *) (reply + 1);
 WPA_PUT_BE16(mic + mic_len, 0);
 if (!(key_info & WPA_KEY_INFO_MIC))
  key_mic = ((void*)0);
 else
  key_mic = mic;

 wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
  "WPA: Sending EAPOL-Key Request (error=%d "
  "pairwise=%d ptk_set=%d len=%lu)",
  error, pairwise, sm->ptk_set, (unsigned long) rlen);
 wpa_eapol_key_send(sm, &sm->ptk, ver, bssid, ETH_P_EAPOL, rbuf, rlen,
      key_mic);
}
