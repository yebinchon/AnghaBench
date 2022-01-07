
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_priv_interface {int * drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_auth_params {scalar_t__ ssid_len; size_t ie_len; size_t auth_data_len; int * auth_data; int * ie; int p2p; int local_state_change; int wep_tx_keyidx; scalar_t__* wep_key_len; int * wep_key; int auth_alg; int ssid; int bssid; int freq; } ;
struct privsep_cmd_authenticate {int ie_len; int auth_data_len; scalar_t__ ssid_len; int p2p; int local_state_change; int wep_tx_keyidx; scalar_t__* wep_key_len; int * wep_key; int auth_alg; int ssid; int bssid; int freq; } ;
typedef int params ;
struct TYPE_2__ {int (* authenticate ) (int *,struct wpa_driver_auth_params*) ;} ;


 int MSG_DEBUG ;
 scalar_t__ SSID_MAX_LEN ;
 int os_memset (struct wpa_driver_auth_params*,int ,int) ;
 int stub1 (int *,struct wpa_driver_auth_params*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_priv_cmd_authenticate(struct wpa_priv_interface *iface,
          void *buf, size_t len)
{
 struct wpa_driver_auth_params params;
 struct privsep_cmd_authenticate *auth;
 int res, i;

 if (iface->drv_priv == ((void*)0) || iface->driver->authenticate == ((void*)0))
  return;

 if (len < sizeof(*auth)) {
  wpa_printf(MSG_DEBUG, "Invalid authentication request");
  return;
 }

 auth = buf;
 if (sizeof(*auth) + auth->ie_len + auth->auth_data_len > len) {
  wpa_printf(MSG_DEBUG, "Authentication request overflow");
  return;
 }

 os_memset(&params, 0, sizeof(params));
 params.freq = auth->freq;
 params.bssid = auth->bssid;
 params.ssid = auth->ssid;
 if (auth->ssid_len > SSID_MAX_LEN)
  return;
 params.ssid_len = auth->ssid_len;
 params.auth_alg = auth->auth_alg;
 for (i = 0; i < 4; i++) {
  if (auth->wep_key_len[i]) {
   params.wep_key[i] = auth->wep_key[i];
   params.wep_key_len[i] = auth->wep_key_len[i];
  }
 }
 params.wep_tx_keyidx = auth->wep_tx_keyidx;
 params.local_state_change = auth->local_state_change;
 params.p2p = auth->p2p;
 if (auth->ie_len) {
  params.ie = (u8 *) (auth + 1);
  params.ie_len = auth->ie_len;
 }
 if (auth->auth_data_len) {
  params.auth_data = ((u8 *) (auth + 1)) + auth->ie_len;
  params.auth_data_len = auth->auth_data_len;
 }

 res = iface->driver->authenticate(iface->drv_priv, &params);
 wpa_printf(MSG_DEBUG, "drv->authenticate: res=%d", res);
}
