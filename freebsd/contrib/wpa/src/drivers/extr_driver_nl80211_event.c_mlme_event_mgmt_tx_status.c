
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t data_len; int ack; int const* data; int dst; int stype; int type; } ;
union wpa_event_data {TYPE_1__ tx_status; } ;
typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct wpa_driver_nl80211_data {scalar_t__ send_action_cookie; int ctx; int nlmode; } ;
struct nlattr {int dummy; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int event ;


 int EVENT_TX_STATUS ;
 int MSG_DEBUG ;
 int WLAN_FC_GET_STYPE (int ) ;
 int WLAN_FC_GET_TYPE (int ) ;
 int is_ap_interface (int ) ;
 int le_to_host16 (int ) ;
 scalar_t__ nla_get_u64 (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_mgmt_tx_status(struct wpa_driver_nl80211_data *drv,
          struct nlattr *cookie, const u8 *frame,
          size_t len, struct nlattr *ack)
{
 union wpa_event_data event;
 const struct ieee80211_hdr *hdr;
 u16 fc;

 wpa_printf(MSG_DEBUG, "nl80211: Frame TX status event");
 if (!is_ap_interface(drv->nlmode)) {
  u64 cookie_val;

  if (!cookie)
   return;

  cookie_val = nla_get_u64(cookie);
  wpa_printf(MSG_DEBUG, "nl80211: Action TX status:"
      " cookie=0x%llx%s (ack=%d)",
      (long long unsigned int) cookie_val,
      cookie_val == drv->send_action_cookie ?
      " (match)" : " (unknown)", ack != ((void*)0));
  if (cookie_val != drv->send_action_cookie)
   return;
 }

 hdr = (const struct ieee80211_hdr *) frame;
 fc = le_to_host16(hdr->frame_control);

 os_memset(&event, 0, sizeof(event));
 event.tx_status.type = WLAN_FC_GET_TYPE(fc);
 event.tx_status.stype = WLAN_FC_GET_STYPE(fc);
 event.tx_status.dst = hdr->addr1;
 event.tx_status.data = frame;
 event.tx_status.data_len = len;
 event.tx_status.ack = ack != ((void*)0);
 wpa_supplicant_event(drv->ctx, EVENT_TX_STATUS, &event);
}
