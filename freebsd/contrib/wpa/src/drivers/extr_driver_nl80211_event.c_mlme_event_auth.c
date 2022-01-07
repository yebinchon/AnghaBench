
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {size_t ies_len; int ies; void* status_code; void* auth_transaction; void* auth_type; int peer; } ;
union wpa_event_data {TYPE_4__ auth; } ;
typedef int u8 ;
struct TYPE_5__ {int flags; } ;
struct wpa_driver_nl80211_data {int ctx; union wpa_event_data* auth_attempt_bssid; int auth_bssid; scalar_t__ force_connect_cmd; TYPE_1__ capa; } ;
struct TYPE_6__ {int variable; int status_code; int auth_transaction; int auth_alg; } ;
struct TYPE_7__ {TYPE_2__ auth; } ;
struct ieee80211_mgmt {TYPE_3__ u; int sa; } ;
typedef int event ;


 int ETH_ALEN ;
 int EVENT_AUTH ;
 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_SME ;
 void* le_to_host16 (int ) ;
 int os_memcpy (int ,int ,int) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_auth(struct wpa_driver_nl80211_data *drv,
       const u8 *frame, size_t len)
{
 const struct ieee80211_mgmt *mgmt;
 union wpa_event_data event;

 if (!(drv->capa.flags & WPA_DRIVER_FLAGS_SME) &&
     drv->force_connect_cmd) {




  wpa_printf(MSG_DEBUG,
      "nl80211: Ignore auth event when using driver SME");
  return;
 }

 wpa_printf(MSG_DEBUG, "nl80211: Authenticate event");
 mgmt = (const struct ieee80211_mgmt *) frame;
 if (len < 24 + sizeof(mgmt->u.auth)) {
  wpa_printf(MSG_DEBUG, "nl80211: Too short association event "
      "frame");
  return;
 }

 os_memcpy(drv->auth_bssid, mgmt->sa, ETH_ALEN);
 os_memset(drv->auth_attempt_bssid, 0, ETH_ALEN);
 os_memset(&event, 0, sizeof(event));
 os_memcpy(event.auth.peer, mgmt->sa, ETH_ALEN);
 event.auth.auth_type = le_to_host16(mgmt->u.auth.auth_alg);
 event.auth.auth_transaction =
  le_to_host16(mgmt->u.auth.auth_transaction);
 event.auth.status_code = le_to_host16(mgmt->u.auth.status_code);
 if (len > 24 + sizeof(mgmt->u.auth)) {
  event.auth.ies = mgmt->u.auth.variable;
  event.auth.ies_len = len - 24 - sizeof(mgmt->u.auth);
 }

 wpa_supplicant_event(drv->ctx, EVENT_AUTH, &event);
}
