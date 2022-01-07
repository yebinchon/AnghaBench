
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {size_t resp_frame_len; size_t resp_ies_len; int wmm_params; int freq; int req_ies_len; int req_ies; int * resp_ies; int const* resp_frame; } ;
struct TYPE_8__ {size_t resp_ies_len; scalar_t__ status_code; int * resp_ies; int bssid; } ;
union wpa_event_data {TYPE_6__ assoc_info; TYPE_2__ assoc_reject; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {int flags; } ;
struct wpa_driver_nl80211_data {int associated; int ssid_len; int ctx; int assoc_freq; TYPE_5__* first_bss; int ssid; int prev_bssid; int bssid; scalar_t__ force_connect_cmd; TYPE_1__ capa; } ;
struct nlattr {int dummy; } ;
struct TYPE_9__ {scalar_t__ variable; int status_code; } ;
struct TYPE_10__ {TYPE_3__ assoc_resp; } ;
struct ieee80211_mgmt {TYPE_4__ u; int sa; int bssid; } ;
typedef int event ;
struct TYPE_11__ {int freq; } ;


 int ETH_ALEN ;
 int EVENT_ASSOC ;
 int EVENT_ASSOC_REJECT ;
 int MSG_DEBUG ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 int WPA_DRIVER_FLAGS_SME ;
 scalar_t__ le_to_host16 (int ) ;
 int nl80211_get_assoc_ssid (struct wpa_driver_nl80211_data*,int ) ;
 int nl80211_parse_wmm_params (struct nlattr*,int *) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int os_memcpy (int ,int ,int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_ssid_txt (int ,int) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_assoc(struct wpa_driver_nl80211_data *drv,
        const u8 *frame, size_t len, struct nlattr *wmm,
        struct nlattr *req_ie)
{
 const struct ieee80211_mgmt *mgmt;
 union wpa_event_data event;
 u16 status;
 int ssid_len;

 if (!(drv->capa.flags & WPA_DRIVER_FLAGS_SME) &&
     drv->force_connect_cmd) {




  wpa_printf(MSG_DEBUG,
      "nl80211: Ignore assoc event when using driver SME");
  return;
 }

 wpa_printf(MSG_DEBUG, "nl80211: Associate event");
 mgmt = (const struct ieee80211_mgmt *) frame;
 if (len < 24 + sizeof(mgmt->u.assoc_resp)) {
  wpa_printf(MSG_DEBUG, "nl80211: Too short association event "
      "frame");
  return;
 }

 status = le_to_host16(mgmt->u.assoc_resp.status_code);
 if (status != WLAN_STATUS_SUCCESS) {
  os_memset(&event, 0, sizeof(event));
  event.assoc_reject.bssid = mgmt->bssid;
  if (len > 24 + sizeof(mgmt->u.assoc_resp)) {
   event.assoc_reject.resp_ies =
    (u8 *) mgmt->u.assoc_resp.variable;
   event.assoc_reject.resp_ies_len =
    len - 24 - sizeof(mgmt->u.assoc_resp);
  }
  event.assoc_reject.status_code = status;

  wpa_supplicant_event(drv->ctx, EVENT_ASSOC_REJECT, &event);
  return;
 }

 drv->associated = 1;
 os_memcpy(drv->bssid, mgmt->sa, ETH_ALEN);
 os_memcpy(drv->prev_bssid, mgmt->sa, ETH_ALEN);

 os_memset(&event, 0, sizeof(event));
 event.assoc_info.resp_frame = frame;
 event.assoc_info.resp_frame_len = len;
 if (len > 24 + sizeof(mgmt->u.assoc_resp)) {
  event.assoc_info.resp_ies = (u8 *) mgmt->u.assoc_resp.variable;
  event.assoc_info.resp_ies_len =
   len - 24 - sizeof(mgmt->u.assoc_resp);
 }

 if (req_ie) {
  event.assoc_info.req_ies = nla_data(req_ie);
  event.assoc_info.req_ies_len = nla_len(req_ie);
 }



 ssid_len = nl80211_get_assoc_ssid(drv, drv->ssid);
 if (ssid_len > 0) {
  drv->ssid_len = ssid_len;
  wpa_printf(MSG_DEBUG,
      "nl80211: Set drv->ssid based on scan res info to '%s'",
      wpa_ssid_txt(drv->ssid, drv->ssid_len));
 }

 event.assoc_info.freq = drv->assoc_freq;
 drv->first_bss->freq = drv->assoc_freq;

 nl80211_parse_wmm_params(wmm, &event.assoc_info.wmm_params);

 wpa_supplicant_event(drv->ctx, EVENT_ASSOC, &event);
}
