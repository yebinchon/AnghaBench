
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initiator; } ;
union wpa_event_data {TYPE_1__ channel_list_changed; } ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;
typedef int data ;


 int EVENT_CHANNEL_LIST_CHANGED ;
 int MSG_DEBUG ;
 size_t NL80211_ATTR_FREQ_AFTER ;
 size_t NL80211_ATTR_FREQ_BEFORE ;
 int REGDOM_BEACON_HINT ;
 int nl80211_dump_freq (char*,struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void nl80211_reg_beacon_hint_event(struct wpa_driver_nl80211_data *drv,
        struct nlattr *tb[])
{
 union wpa_event_data data;

 wpa_printf(MSG_DEBUG, "nl80211: Regulatory beacon hint");
 os_memset(&data, 0, sizeof(data));
 data.channel_list_changed.initiator = REGDOM_BEACON_HINT;

 if (tb[NL80211_ATTR_FREQ_BEFORE])
  nl80211_dump_freq("before", tb[NL80211_ATTR_FREQ_BEFORE]);
 if (tb[NL80211_ATTR_FREQ_AFTER])
  nl80211_dump_freq("after", tb[NL80211_ATTR_FREQ_AFTER]);

 wpa_supplicant_event(drv->ctx, EVENT_CHANNEL_LIST_CHANGED, &data);
}
