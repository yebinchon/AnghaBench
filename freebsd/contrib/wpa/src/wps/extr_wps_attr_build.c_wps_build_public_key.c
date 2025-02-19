
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {int dev_pw_id; struct wpabuf* dh_pubkey_e; struct wpabuf* dh_pubkey_r; scalar_t__ registrar; int * dh_privkey; int * dh_ctx; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ap_nfc_dev_pw_id; int * ap_nfc_dh_pubkey; int * ap_nfc_dh_privkey; scalar_t__ ap; int * dh_pubkey; int * dh_ctx; int * dh_privkey; } ;


 int ATTR_PUBLIC_KEY ;
 int DEV_PW_DEFAULT ;
 int DEV_PW_NFC_CONNECTION_HANDOVER ;
 int MSG_DEBUG ;
 int dh5_free (int *) ;
 int * dh5_init (int **,struct wpabuf**) ;
 int * dh5_init_fixed (int *,struct wpabuf*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,int *) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_clear_free (int *) ;
 void* wpabuf_dup (int *) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 struct wpabuf* wpabuf_zeropad (struct wpabuf*,int) ;

int wps_build_public_key(struct wps_data *wps, struct wpabuf *msg)
{
 struct wpabuf *pubkey = ((void*)0);

 wpa_printf(MSG_DEBUG, "WPS:  * Public Key");
 wpabuf_clear_free(wps->dh_privkey);
 wps->dh_privkey = ((void*)0);
 if (wps->dev_pw_id != DEV_PW_DEFAULT && wps->wps->dh_privkey &&
     wps->wps->dh_ctx) {
  wpa_printf(MSG_DEBUG, "WPS: Using pre-configured DH keys");
  if (wps->wps->dh_pubkey == ((void*)0)) {
   wpa_printf(MSG_DEBUG,
       "WPS: wps->wps->dh_pubkey == NULL");
   return -1;
  }
  wps->dh_privkey = wpabuf_dup(wps->wps->dh_privkey);
  wps->dh_ctx = wps->wps->dh_ctx;
  wps->wps->dh_ctx = ((void*)0);
  pubkey = wpabuf_dup(wps->wps->dh_pubkey);
 } else {
  wpa_printf(MSG_DEBUG, "WPS: Generate new DH keys");
  dh5_free(wps->dh_ctx);
  wps->dh_ctx = dh5_init(&wps->dh_privkey, &pubkey);
  pubkey = wpabuf_zeropad(pubkey, 192);
 }
 if (wps->dh_ctx == ((void*)0) || wps->dh_privkey == ((void*)0) || pubkey == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Failed to initialize "
      "Diffie-Hellman handshake");
  wpabuf_free(pubkey);
  return -1;
 }
 wpa_hexdump_buf_key(MSG_DEBUG, "WPS: DH Private Key", wps->dh_privkey);
 wpa_hexdump_buf(MSG_DEBUG, "WPS: DH own Public Key", pubkey);

 wpabuf_put_be16(msg, ATTR_PUBLIC_KEY);
 wpabuf_put_be16(msg, wpabuf_len(pubkey));
 wpabuf_put_buf(msg, pubkey);

 if (wps->registrar) {
  wpabuf_free(wps->dh_pubkey_r);
  wps->dh_pubkey_r = pubkey;
 } else {
  wpabuf_free(wps->dh_pubkey_e);
  wps->dh_pubkey_e = pubkey;
 }

 return 0;
}
