
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct wpa_eapol_key {int const* key_id; int const* key_rsc; int const* key_iv; int const* key_nonce; int const* replay_counter; int key_length; int type; int key_info; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int BIT (int) ;
 int MSG_DEBUG ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_ACK ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_ERROR ;
 int WPA_KEY_INFO_INSTALL ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_KEY_INDEX_SHIFT ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SECURE ;
 int WPA_KEY_INFO_TYPE_MASK ;
 unsigned int WPA_NONCE_LEN ;
 unsigned int WPA_REPLAY_COUNTER_LEN ;
 int wpa_dbg (int ,int ,char*,int,...) ;
 int wpa_hexdump (int ,char*,int const*,unsigned int) ;

__attribute__((used)) static void wpa_eapol_key_dump(struct wpa_sm *sm,
          const struct wpa_eapol_key *key,
          unsigned int key_data_len,
          const u8 *mic, unsigned int mic_len)
{

 u16 key_info = WPA_GET_BE16(key->key_info);

 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "  EAPOL-Key type=%d", key->type);
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
  "  key_info 0x%x (ver=%d keyidx=%d rsvd=%d %s%s%s%s%s%s%s%s)",
  key_info, key_info & WPA_KEY_INFO_TYPE_MASK,
  (key_info & WPA_KEY_INFO_KEY_INDEX_MASK) >>
  WPA_KEY_INFO_KEY_INDEX_SHIFT,
  (key_info & (BIT(13) | BIT(14) | BIT(15))) >> 13,
  key_info & WPA_KEY_INFO_KEY_TYPE ? "Pairwise" : "Group",
  key_info & WPA_KEY_INFO_INSTALL ? " Install" : "",
  key_info & WPA_KEY_INFO_ACK ? " Ack" : "",
  key_info & WPA_KEY_INFO_MIC ? " MIC" : "",
  key_info & WPA_KEY_INFO_SECURE ? " Secure" : "",
  key_info & WPA_KEY_INFO_ERROR ? " Error" : "",
  key_info & WPA_KEY_INFO_REQUEST ? " Request" : "",
  key_info & WPA_KEY_INFO_ENCR_KEY_DATA ? " Encr" : "");
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
  "  key_length=%u key_data_length=%u",
  WPA_GET_BE16(key->key_length), key_data_len);
 wpa_hexdump(MSG_DEBUG, "  replay_counter",
      key->replay_counter, WPA_REPLAY_COUNTER_LEN);
 wpa_hexdump(MSG_DEBUG, "  key_nonce", key->key_nonce, WPA_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "  key_iv", key->key_iv, 16);
 wpa_hexdump(MSG_DEBUG, "  key_rsc", key->key_rsc, 8);
 wpa_hexdump(MSG_DEBUG, "  key_id (reserved)", key->key_id, 8);
 wpa_hexdump(MSG_DEBUG, "  key_mic", mic, mic_len);

}
