
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_priv_interface {int * drv_priv; TYPE_2__* driver; } ;
struct TYPE_3__ {int channel; int freq; int mode; } ;
struct wpa_driver_associate_params {int* bssid; scalar_t__ ssid_len; int* wpa_ie; size_t wpa_ie_len; int mode; int auth_alg; int key_mgmt_suite; int group_suite; int pairwise_suite; TYPE_1__ freq; int ssid; } ;
struct privsep_cmd_associate {int wpa_ie_len; int* bssid; scalar_t__ ssid_len; int mode; int auth_alg; int key_mgmt_suite; int group_suite; int pairwise_suite; int channel; int freq; int hwmode; int ssid; } ;
typedef int params ;
struct TYPE_4__ {int (* associate ) (int *,struct wpa_driver_associate_params*) ;} ;


 int MSG_DEBUG ;
 scalar_t__ SSID_MAX_LEN ;
 int os_memset (struct wpa_driver_associate_params*,int ,int) ;
 int stub1 (int *,struct wpa_driver_associate_params*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_priv_cmd_associate(struct wpa_priv_interface *iface,
       void *buf, size_t len)
{
 struct wpa_driver_associate_params params;
 struct privsep_cmd_associate *assoc;
 u8 *bssid;
 int res;

 if (iface->drv_priv == ((void*)0) || iface->driver->associate == ((void*)0))
  return;

 if (len < sizeof(*assoc)) {
  wpa_printf(MSG_DEBUG, "Invalid association request");
  return;
 }

 assoc = buf;
 if (sizeof(*assoc) + assoc->wpa_ie_len > len) {
  wpa_printf(MSG_DEBUG, "Association request overflow");
  return;
 }

 os_memset(&params, 0, sizeof(params));
 bssid = assoc->bssid;
 if (bssid[0] | bssid[1] | bssid[2] | bssid[3] | bssid[4] | bssid[5])
  params.bssid = bssid;
 params.ssid = assoc->ssid;
 if (assoc->ssid_len > SSID_MAX_LEN)
  return;
 params.ssid_len = assoc->ssid_len;
 params.freq.mode = assoc->hwmode;
 params.freq.freq = assoc->freq;
 params.freq.channel = assoc->channel;
 if (assoc->wpa_ie_len) {
  params.wpa_ie = (u8 *) (assoc + 1);
  params.wpa_ie_len = assoc->wpa_ie_len;
 }
 params.pairwise_suite = assoc->pairwise_suite;
 params.group_suite = assoc->group_suite;
 params.key_mgmt_suite = assoc->key_mgmt_suite;
 params.auth_alg = assoc->auth_alg;
 params.mode = assoc->mode;

 res = iface->driver->associate(iface->drv_priv, &params);
 wpa_printf(MSG_DEBUG, "drv->associate: res=%d", res);
}
