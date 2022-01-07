
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {TYPE_1__* ctx; int group_cipher; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int gtk; int tx; int alg; int key_rsc_len; } ;
struct wpa_eapol_ie_parse {int const* gtk; int gtk_len; int oci_len; int oci; } ;
struct wpa_channel_info {int seg1_idx; int chanwidth; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int BIT (int) ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int channel_width_to_int (int ) ;
 scalar_t__ ieee80211w_set_keys (struct wpa_sm*,struct wpa_eapol_ie_parse*) ;
 int ocv_errorstr ;
 scalar_t__ ocv_verify_tx_params (int ,int ,struct wpa_channel_info*,int ,int ) ;
 int os_memcpy (int ,int*,int) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_msg (int ,int ,char*,...) ;
 scalar_t__ wpa_sm_channel_info (struct wpa_sm*,struct wpa_channel_info*) ;
 scalar_t__ wpa_sm_ocv_enabled (struct wpa_sm*) ;
 scalar_t__ wpa_supplicant_check_group_cipher (struct wpa_sm*,int ,int,int,int *,int *) ;
 int wpa_supplicant_gtk_tx_bit_workaround (struct wpa_sm*,int) ;
 scalar_t__ wpa_supplicant_parse_ies (int const*,size_t,struct wpa_eapol_ie_parse*) ;

__attribute__((used)) static int wpa_supplicant_process_1_of_2_rsn(struct wpa_sm *sm,
          const u8 *keydata,
          size_t keydatalen,
          u16 key_info,
          struct wpa_gtk_data *gd)
{
 int maxkeylen;
 struct wpa_eapol_ie_parse ie;

 wpa_hexdump_key(MSG_DEBUG, "RSN: msg 1/2 key data",
   keydata, keydatalen);
 if (wpa_supplicant_parse_ies(keydata, keydatalen, &ie) < 0)
  return -1;
 if (ie.gtk && !(key_info & WPA_KEY_INFO_ENCR_KEY_DATA)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: GTK IE in unencrypted key data");
  return -1;
 }
 if (ie.gtk == ((void*)0)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: No GTK IE in Group Key msg 1/2");
  return -1;
 }
 maxkeylen = gd->gtk_len = ie.gtk_len - 2;
 if (wpa_supplicant_check_group_cipher(sm, sm->group_cipher,
           gd->gtk_len, maxkeylen,
           &gd->key_rsc_len, &gd->alg))
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "RSN: received GTK in group key handshake",
   ie.gtk, ie.gtk_len);
 gd->keyidx = ie.gtk[0] & 0x3;
 gd->tx = wpa_supplicant_gtk_tx_bit_workaround(sm,
            !!(ie.gtk[0] & BIT(2)));
 if (ie.gtk_len - 2 > sizeof(gd->gtk)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "RSN: Too long GTK in GTK IE (len=%lu)",
   (unsigned long) ie.gtk_len - 2);
  return -1;
 }
 os_memcpy(gd->gtk, ie.gtk + 2, ie.gtk_len - 2);

 if (ieee80211w_set_keys(sm, &ie) < 0)
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "RSN: Failed to configure IGTK");

 return 0;
}
