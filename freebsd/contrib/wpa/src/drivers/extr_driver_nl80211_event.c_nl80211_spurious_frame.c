
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wds; int addr; int bssid; } ;
union wpa_event_data {TYPE_1__ rx_from_unknown; } ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int addr; struct wpa_driver_nl80211_data* drv; } ;
typedef int event ;


 int EVENT_RX_FROM_UNKNOWN ;
 size_t NL80211_ATTR_MAC ;
 int nla_data (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void nl80211_spurious_frame(struct i802_bss *bss, struct nlattr **tb,
       int wds)
{
 struct wpa_driver_nl80211_data *drv = bss->drv;
 union wpa_event_data event;

 if (!tb[NL80211_ATTR_MAC])
  return;

 os_memset(&event, 0, sizeof(event));
 event.rx_from_unknown.bssid = bss->addr;
 event.rx_from_unknown.addr = nla_data(tb[NL80211_ATTR_MAC]);
 event.rx_from_unknown.wds = wds;

 wpa_supplicant_event(drv->ctx, EVENT_RX_FROM_UNKNOWN, &event);
}
