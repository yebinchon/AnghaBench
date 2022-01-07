
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int kck_len; int kck; } ;
typedef TYPE_2__ u8 ;
typedef int u16 ;
struct wpa_eapol_key {struct wpa_eapol_key* replay_counter; int kck_len; int kck; } ;
struct wpa_sm {int ptk_set; int renew_snonce; int rx_replay_counter_set; TYPE_2__* rx_replay_counter; TYPE_1__* ctx; int key_mgmt; TYPE_2__ ptk; struct wpa_eapol_key tptk; scalar_t__ tptk_set; int pmk_len; } ;
struct TYPE_8__ {int msg_ctx; } ;


 int MSG_INFO ;
 int MSG_WARNING ;
 int WPA_EAPOL_KEY_MIC_MAX_LEN ;
 int WPA_REPLAY_COUNTER_LEN ;
 scalar_t__ os_memcmp_const (TYPE_2__*,struct wpa_eapol_key*,size_t) ;
 int os_memcpy (TYPE_2__*,struct wpa_eapol_key*,int) ;
 int os_memset (struct wpa_eapol_key*,int ,size_t) ;
 scalar_t__ wpa_eapol_key_mic (int ,int ,int ,int ,TYPE_2__ const*,size_t,TYPE_2__*) ;
 size_t wpa_mic_len (int ,int ) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_supplicant_verify_eapol_key_mic(struct wpa_sm *sm,
            struct wpa_eapol_key *key,
            u16 ver,
            const u8 *buf, size_t len)
{
 u8 mic[WPA_EAPOL_KEY_MIC_MAX_LEN];
 int ok = 0;
 size_t mic_len = wpa_mic_len(sm->key_mgmt, sm->pmk_len);

 os_memcpy(mic, key + 1, mic_len);
 if (sm->tptk_set) {
  os_memset(key + 1, 0, mic_len);
  if (wpa_eapol_key_mic(sm->tptk.kck, sm->tptk.kck_len,
          sm->key_mgmt,
          ver, buf, len, (u8 *) (key + 1)) < 0 ||
      os_memcmp_const(mic, key + 1, mic_len) != 0) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Invalid EAPOL-Key MIC "
    "when using TPTK - ignoring TPTK");





  } else {



   ok = 1;
   sm->tptk_set = 0;
   sm->ptk_set = 1;
   os_memcpy(&sm->ptk, &sm->tptk, sizeof(sm->ptk));
   os_memset(&sm->tptk, 0, sizeof(sm->tptk));







   sm->renew_snonce = 1;
  }
 }

 if (!ok && sm->ptk_set) {
  os_memset(key + 1, 0, mic_len);
  if (wpa_eapol_key_mic(sm->ptk.kck, sm->ptk.kck_len,
          sm->key_mgmt,
          ver, buf, len, (u8 *) (key + 1)) < 0 ||
      os_memcmp_const(mic, key + 1, mic_len) != 0) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Invalid EAPOL-Key MIC - "
    "dropping packet");





   return -1;
  }



  ok = 1;
 }

 if (!ok) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: Could not verify EAPOL-Key MIC - "
   "dropping packet");
  return -1;
 }

 os_memcpy(sm->rx_replay_counter, key->replay_counter,
    WPA_REPLAY_COUNTER_LEN);
 sm->rx_replay_counter_set = 1;
 return 0;
}
