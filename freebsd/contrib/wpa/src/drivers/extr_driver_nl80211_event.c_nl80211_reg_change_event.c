
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alpha2; int type; int initiator; } ;
union wpa_event_data {TYPE_1__ channel_list_changed; } ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;
typedef enum nl80211_reg_type { ____Placeholder_nl80211_reg_type } nl80211_reg_type ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef int data ;


 int EVENT_CHANNEL_LIST_CHANGED ;
 int MSG_DEBUG ;
 size_t NL80211_ATTR_REG_ALPHA2 ;
 size_t NL80211_ATTR_REG_INITIATOR ;
 size_t NL80211_ATTR_REG_TYPE ;
 int REGDOM_SET_BY_CORE ;
 int REGDOM_SET_BY_COUNTRY_IE ;
 int REGDOM_SET_BY_DRIVER ;
 int REGDOM_SET_BY_USER ;
 int REGDOM_TYPE_COUNTRY ;
 int REGDOM_TYPE_CUSTOM_WORLD ;
 int REGDOM_TYPE_INTERSECTION ;
 int REGDOM_TYPE_WORLD ;
 int nla_get_string (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int os_strlcpy (int,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void nl80211_reg_change_event(struct wpa_driver_nl80211_data *drv,
         struct nlattr *tb[])
{
 union wpa_event_data data;
 enum nl80211_reg_initiator init;

 wpa_printf(MSG_DEBUG, "nl80211: Regulatory domain change");

 if (tb[NL80211_ATTR_REG_INITIATOR] == ((void*)0))
  return;

 os_memset(&data, 0, sizeof(data));
 init = nla_get_u8(tb[NL80211_ATTR_REG_INITIATOR]);
 wpa_printf(MSG_DEBUG, " * initiator=%d", init);
 switch (init) {
 case 135:
  data.channel_list_changed.initiator = REGDOM_SET_BY_CORE;
  break;
 case 132:
  data.channel_list_changed.initiator = REGDOM_SET_BY_USER;
  break;
 case 133:
  data.channel_list_changed.initiator = REGDOM_SET_BY_DRIVER;
  break;
 case 134:
  data.channel_list_changed.initiator = REGDOM_SET_BY_COUNTRY_IE;
  break;
 }

 if (tb[NL80211_ATTR_REG_TYPE]) {
  enum nl80211_reg_type type;
  type = nla_get_u8(tb[NL80211_ATTR_REG_TYPE]);
  wpa_printf(MSG_DEBUG, " * type=%d", type);
  switch (type) {
  case 131:
   data.channel_list_changed.type = REGDOM_TYPE_COUNTRY;
   break;
  case 128:
   data.channel_list_changed.type = REGDOM_TYPE_WORLD;
   break;
  case 130:
   data.channel_list_changed.type =
    REGDOM_TYPE_CUSTOM_WORLD;
   break;
  case 129:
   data.channel_list_changed.type =
    REGDOM_TYPE_INTERSECTION;
   break;
  }
 }

 if (tb[NL80211_ATTR_REG_ALPHA2]) {
  os_strlcpy(data.channel_list_changed.alpha2,
      nla_get_string(tb[NL80211_ATTR_REG_ALPHA2]),
      sizeof(data.channel_list_changed.alpha2));
  wpa_printf(MSG_DEBUG, " * alpha2=%s",
      data.channel_list_changed.alpha2);
 }

 wpa_supplicant_event(drv->ctx, EVENT_CHANNEL_LIST_CHANGED, &data);
}
