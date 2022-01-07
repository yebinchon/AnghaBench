
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ssid_len; void* key_mgmt_suite; int action; void* bssid; void* ssid; } ;
union wpa_event_data {TYPE_1__ external_auth; } ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;
typedef int event ;
typedef enum nl80211_external_auth_action { ____Placeholder_nl80211_external_auth_action } nl80211_external_auth_action ;


 int EVENT_EXTERNAL_AUTH ;
 int EXT_AUTH_ABORT ;
 int EXT_AUTH_START ;
 int MSG_DEBUG ;
 size_t NL80211_ATTR_AKM_SUITES ;
 size_t NL80211_ATTR_BSSID ;
 size_t NL80211_ATTR_EXTERNAL_AUTH_ACTION ;
 size_t NL80211_ATTR_SSID ;


 scalar_t__ SSID_MAX_LEN ;
 void* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*,int ,void*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void nl80211_external_auth(struct wpa_driver_nl80211_data *drv,
      struct nlattr **tb)
{
 union wpa_event_data event;
 enum nl80211_external_auth_action act;

 if (!tb[NL80211_ATTR_AKM_SUITES] ||
     !tb[NL80211_ATTR_EXTERNAL_AUTH_ACTION] ||
     !tb[NL80211_ATTR_BSSID] ||
     !tb[NL80211_ATTR_SSID])
  return;

 os_memset(&event, 0, sizeof(event));
 act = nla_get_u32(tb[NL80211_ATTR_EXTERNAL_AUTH_ACTION]);
 switch (act) {
 case 128:
  event.external_auth.action = EXT_AUTH_START;
  break;
 case 129:
  event.external_auth.action = EXT_AUTH_ABORT;
  break;
 default:
  return;
 }

 event.external_auth.key_mgmt_suite =
  nla_get_u32(tb[NL80211_ATTR_AKM_SUITES]);

 event.external_auth.ssid_len = nla_len(tb[NL80211_ATTR_SSID]);
 if (event.external_auth.ssid_len > SSID_MAX_LEN)
  return;
 event.external_auth.ssid = nla_data(tb[NL80211_ATTR_SSID]);

 event.external_auth.bssid = nla_data(tb[NL80211_ATTR_BSSID]);

 wpa_printf(MSG_DEBUG,
     "nl80211: External auth action: %u, AKM: 0x%x",
     event.external_auth.action,
     event.external_auth.key_mgmt_suite);
 wpa_supplicant_event(drv->ctx, EVENT_EXTERNAL_AUTH, &event);
}
