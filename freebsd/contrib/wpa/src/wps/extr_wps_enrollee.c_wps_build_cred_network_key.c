
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int mac_addr; } ;
struct wps_data {TYPE_2__* wps; int p2p_dev_addr; TYPE_1__ peer_dev; scalar_t__ new_psk_len; } ;
struct wpabuf {int dummy; } ;
typedef int psk ;
typedef int hex ;
struct TYPE_4__ {int ap_auth_type; int network_key_len; char* network_key; scalar_t__ registrar; } ;


 int ATTR_NETWORK_KEY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 scalar_t__ random_get_bytes (int *,int) ;
 int random_pool_ready () ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_snprintf_hex (char*,int,int *,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char*,int) ;
 int wps_cb_new_psk (scalar_t__,int ,int ,int *,int) ;

__attribute__((used)) static int wps_build_cred_network_key(struct wps_data *wps, struct wpabuf *msg)
{
 if ((wps->wps->ap_auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK)) &&
     wps->wps->network_key_len == 0) {
  char hex[65];
  u8 psk[32];

  if (random_pool_ready() != 1 ||
      random_get_bytes(psk, sizeof(psk)) < 0) {
   wpa_printf(MSG_INFO,
       "WPS: Could not generate random PSK");
   return -1;
  }
  wpa_hexdump_key(MSG_DEBUG, "WPS: Generated per-device PSK",
    psk, sizeof(psk));
  wpa_printf(MSG_DEBUG, "WPS:  * Network Key (len=%u)",
      (unsigned int) wps->new_psk_len * 2);
  wpa_snprintf_hex(hex, sizeof(hex), psk, sizeof(psk));
  wpabuf_put_be16(msg, ATTR_NETWORK_KEY);
  wpabuf_put_be16(msg, sizeof(psk) * 2);
  wpabuf_put_data(msg, hex, sizeof(psk) * 2);
  if (wps->wps->registrar) {
   wps_cb_new_psk(wps->wps->registrar,
           wps->peer_dev.mac_addr,
           wps->p2p_dev_addr, psk, sizeof(psk));
  }
  return 0;
 }

 wpa_printf(MSG_DEBUG, "WPS:  * Network Key (len=%u)",
     (unsigned int) wps->wps->network_key_len);
 wpabuf_put_be16(msg, ATTR_NETWORK_KEY);
 wpabuf_put_be16(msg, wps->wps->network_key_len);
 wpabuf_put_data(msg, wps->wps->network_key, wps->wps->network_key_len);
 return 0;
}
