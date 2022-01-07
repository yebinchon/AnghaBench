
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_nss; void* chan_width; void* smps_mode; int addr; } ;
union wpa_event_data {TYPE_1__ sta_opmode; } ;
typedef int u8 ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;


 void* CHAN_WIDTH_160 ;
 void* CHAN_WIDTH_20 ;
 void* CHAN_WIDTH_20_NOHT ;
 void* CHAN_WIDTH_40 ;
 void* CHAN_WIDTH_80 ;
 void* CHAN_WIDTH_80P80 ;
 void* CHAN_WIDTH_UNKNOWN ;
 int EVENT_STATION_OPMODE_CHANGED ;
 size_t NL80211_ATTR_CHANNEL_WIDTH ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_NSS ;
 size_t NL80211_ATTR_SMPS_MODE ;
 void* SMPS_DYNAMIC ;
 void* SMPS_INVALID ;
 void* SMPS_OFF ;
 void* SMPS_STATIC ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void nl80211_sta_opmode_change_event(struct wpa_driver_nl80211_data *drv,
         struct nlattr **tb)
{
 union wpa_event_data ed;
 u8 smps_mode, max_bw;

 if (!tb[NL80211_ATTR_MAC] ||
     (!tb[NL80211_ATTR_CHANNEL_WIDTH] &&
      !tb[NL80211_ATTR_SMPS_MODE] &&
      !tb[NL80211_ATTR_NSS]))
  return;

 ed.sta_opmode.smps_mode = SMPS_INVALID;
 ed.sta_opmode.chan_width = CHAN_WIDTH_UNKNOWN;
 ed.sta_opmode.rx_nss = 0xff;
 ed.sta_opmode.addr = nla_data(tb[NL80211_ATTR_MAC]);

 if (tb[NL80211_ATTR_SMPS_MODE]) {
  smps_mode = nla_get_u8(tb[NL80211_ATTR_SMPS_MODE]);
  switch (smps_mode) {
  case 129:
   ed.sta_opmode.smps_mode = SMPS_OFF;
   break;
  case 128:
   ed.sta_opmode.smps_mode = SMPS_STATIC;
   break;
  case 130:
   ed.sta_opmode.smps_mode = SMPS_DYNAMIC;
   break;
  default:
   ed.sta_opmode.smps_mode = SMPS_INVALID;
   break;
  }
 }

 if (tb[NL80211_ATTR_CHANNEL_WIDTH]) {
  max_bw = nla_get_u32(tb[NL80211_ATTR_CHANNEL_WIDTH]);
  switch (max_bw) {
  case 134:
   ed.sta_opmode.chan_width = CHAN_WIDTH_20_NOHT;
   break;
  case 135:
   ed.sta_opmode.chan_width = CHAN_WIDTH_20;
   break;
  case 133:
   ed.sta_opmode.chan_width = CHAN_WIDTH_40;
   break;
  case 132:
   ed.sta_opmode.chan_width = CHAN_WIDTH_80;
   break;
  case 131:
   ed.sta_opmode.chan_width = CHAN_WIDTH_80P80;
   break;
  case 136:
   ed.sta_opmode.chan_width = CHAN_WIDTH_160;
   break;
  default:
   ed.sta_opmode.chan_width = CHAN_WIDTH_UNKNOWN;
   break;

  }
 }

 if (tb[NL80211_ATTR_NSS])
  ed.sta_opmode.rx_nss = nla_get_u8(tb[NL80211_ATTR_NSS]);

 wpa_supplicant_event(drv->ctx, EVENT_STATION_OPMODE_CHANGED, &ed);
}
