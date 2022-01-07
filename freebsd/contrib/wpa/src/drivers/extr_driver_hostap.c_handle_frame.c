
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t frame_len; int * frame; } ;
union wpa_event_data {TYPE_1__ rx_mgmt; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_hdr {int frame_control; } ;
struct hostap_driver_data {int hapd; } ;
typedef int event ;


 int EVENT_RX_MGMT ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ WLAN_FC_GET_STYPE (scalar_t__) ;
 scalar_t__ WLAN_FC_GET_TYPE (scalar_t__) ;
 scalar_t__ WLAN_FC_PVER ;
 scalar_t__ WLAN_FC_STYPE_BEACON ;



 int handle_data (struct hostap_driver_data*,int *,size_t,scalar_t__) ;
 int handle_tx_callback (struct hostap_driver_data*,int *,size_t,int) ;
 scalar_t__ le_to_host16 (int ) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int printf (char*,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void handle_frame(struct hostap_driver_data *drv, u8 *buf, size_t len)
{
 struct ieee80211_hdr *hdr;
 u16 fc, type, stype;
 size_t data_len = len;
 int ver;
 union wpa_event_data event;



 if (len < 24) {
  wpa_printf(MSG_MSGDUMP, "handle_frame: too short (%lu)",
      (unsigned long) len);
  return;
 }

 hdr = (struct ieee80211_hdr *) buf;
 fc = le_to_host16(hdr->frame_control);
 type = WLAN_FC_GET_TYPE(fc);
 stype = WLAN_FC_GET_STYPE(fc);

 if (type != 128 || stype != WLAN_FC_STYPE_BEACON) {
  wpa_hexdump(MSG_MSGDUMP, "Received management frame",
       buf, len);
 }

 ver = fc & WLAN_FC_PVER;




 if (ver == 1 || ver == 2) {
  handle_tx_callback(drv, buf, data_len, ver == 2 ? 1 : 0);
  return;
 } else if (ver != 0) {
  printf("unknown protocol version %d\n", ver);
  return;
 }

 switch (type) {
 case 128:
  os_memset(&event, 0, sizeof(event));
  event.rx_mgmt.frame = buf;
  event.rx_mgmt.frame_len = data_len;
  wpa_supplicant_event(drv->hapd, EVENT_RX_MGMT, &event);
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "CTRL");
  break;
 case 129:
  wpa_printf(MSG_DEBUG, "DATA");
  handle_data(drv, buf, data_len, stype);
  break;
 default:
  wpa_printf(MSG_DEBUG, "unknown frame type %d", type);
  break;
 }
}
