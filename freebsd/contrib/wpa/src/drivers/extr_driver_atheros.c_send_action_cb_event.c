
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t data_len; int ack; int const* data; int dst; int stype; int type; } ;
union wpa_event_data {TYPE_1__ tx_status; } ;
typedef int u8 ;
typedef int u16 ;
struct ieee80211_send_action_cb {int ack; int dst_addr; } ;
struct ieee80211_hdr {int frame_control; } ;
struct atheros_driver_data {int hapd; } ;
typedef int event ;


 int EVENT_TX_STATUS ;
 int MSG_DEBUG ;
 int WLAN_FC_GET_STYPE (int ) ;
 int WLAN_FC_GET_TYPE (int ) ;
 int le_to_host16 (int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_hexdump (int ,char*,char*,size_t) ;
 int wpa_printf (int ,char*,int,int) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void send_action_cb_event(struct atheros_driver_data *drv,
     char *data, size_t data_len)
{
 union wpa_event_data event;
 struct ieee80211_send_action_cb *sa;
 const struct ieee80211_hdr *hdr;
 u16 fc;

 if (data_len < sizeof(*sa) + 24) {
  wpa_printf(MSG_DEBUG,
      "athr: Too short event message (data_len=%d sizeof(*sa)=%d)",
      (int) data_len, (int) sizeof(*sa));
  wpa_hexdump(MSG_DEBUG, "athr: Short event message",
       data, data_len);
  return;
 }

 sa = (struct ieee80211_send_action_cb *) data;

 hdr = (const struct ieee80211_hdr *) (sa + 1);
 fc = le_to_host16(hdr->frame_control);

 os_memset(&event, 0, sizeof(event));
 event.tx_status.type = WLAN_FC_GET_TYPE(fc);
 event.tx_status.stype = WLAN_FC_GET_STYPE(fc);
 event.tx_status.dst = sa->dst_addr;
 event.tx_status.data = (const u8 *) hdr;
 event.tx_status.data_len = data_len - sizeof(*sa);
 event.tx_status.ack = sa->ack;
 wpa_supplicant_event(drv->hapd, EVENT_TX_STATUS, &event);
}
