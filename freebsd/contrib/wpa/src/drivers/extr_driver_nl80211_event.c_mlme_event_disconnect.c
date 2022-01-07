
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locally_generated; int reason_code; } ;
union wpa_event_data {TYPE_1__ deauth_info; } ;
struct TYPE_4__ {int flags; } ;
struct wpa_driver_nl80211_data {int ctx; scalar_t__ ignore_next_local_disconnect; TYPE_2__ capa; } ;
struct nlattr {int dummy; } ;
typedef int data ;


 int EVENT_DEAUTH ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int WPA_DRIVER_FLAGS_SME ;
 int nl80211_mark_disconnected (struct wpa_driver_nl80211_data*) ;
 int nla_get_u16 (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_disconnect(struct wpa_driver_nl80211_data *drv,
      struct nlattr *reason, struct nlattr *addr,
      struct nlattr *by_ap)
{
 union wpa_event_data data;
 unsigned int locally_generated = by_ap == ((void*)0);

 if (drv->capa.flags & WPA_DRIVER_FLAGS_SME) {




  wpa_printf(MSG_DEBUG, "nl80211: Ignore disconnect "
      "event when using userspace SME");
  return;
 }

 if (drv->ignore_next_local_disconnect) {
  drv->ignore_next_local_disconnect = 0;
  if (locally_generated) {
   wpa_printf(MSG_DEBUG, "nl80211: Ignore disconnect "
       "event triggered during reassociation");
   return;
  }
  wpa_printf(MSG_WARNING, "nl80211: Was expecting local "
      "disconnect but got another disconnect "
      "event first");
 }

 wpa_printf(MSG_DEBUG, "nl80211: Disconnect event");
 nl80211_mark_disconnected(drv);
 os_memset(&data, 0, sizeof(data));
 if (reason)
  data.deauth_info.reason_code = nla_get_u16(reason);
 data.deauth_info.locally_generated = by_ap == ((void*)0);
 wpa_supplicant_event(drv->ctx, EVENT_DEAUTH, &data);
}
