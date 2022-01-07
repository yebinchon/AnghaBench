
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t frame_len; int datarate; int ssi_signal; int * frame; } ;
union wpa_event_data {TYPE_1__ rx_mgmt; } ;
typedef int u8 ;
typedef int u16 ;
struct wpa_driver_nl80211_data {int ctx; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int event ;


 int EVENT_RX_MGMT ;
 int MSG_DEBUG ;
 int WLAN_FC_GET_TYPE (int ) ;



 int from_unknown_sta (struct wpa_driver_nl80211_data*,int *,size_t) ;
 int le_to_host16 (int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void handle_frame(struct wpa_driver_nl80211_data *drv,
    u8 *buf, size_t len, int datarate, int ssi_signal)
{
 struct ieee80211_hdr *hdr;
 u16 fc;
 union wpa_event_data event;

 hdr = (struct ieee80211_hdr *) buf;
 fc = le_to_host16(hdr->frame_control);

 switch (WLAN_FC_GET_TYPE(fc)) {
 case 128:
  os_memset(&event, 0, sizeof(event));
  event.rx_mgmt.frame = buf;
  event.rx_mgmt.frame_len = len;
  event.rx_mgmt.datarate = datarate;
  event.rx_mgmt.ssi_signal = ssi_signal;
  wpa_supplicant_event(drv->ctx, EVENT_RX_MGMT, &event);
  break;
 case 130:

  wpa_printf(MSG_DEBUG, "CTRL");
  from_unknown_sta(drv, buf, len);
  break;
 case 129:
  from_unknown_sta(drv, buf, len);
  break;
 }
}
