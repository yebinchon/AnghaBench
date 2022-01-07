
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_er_ap {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ hwaddr_aton (char*,int*) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int* wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int*,int) ;
 int wps_er_process_wlanevent_eap (struct wps_er_ap*,int*,struct wpabuf*) ;
 int wps_er_process_wlanevent_probe_req (struct wps_er_ap*,int*,struct wpabuf*) ;

__attribute__((used)) static void wps_er_process_wlanevent(struct wps_er_ap *ap,
         struct wpabuf *event)
{
 u8 *data;
 u8 wlan_event_type;
 u8 wlan_event_mac[ETH_ALEN];
 struct wpabuf msg;

 wpa_hexdump(MSG_MSGDUMP, "WPS ER: Received WLANEvent",
      wpabuf_head(event), wpabuf_len(event));
 if (wpabuf_len(event) < 1 + 17) {
  wpa_printf(MSG_DEBUG, "WPS ER: Too short WLANEvent");
  return;
 }

 data = wpabuf_mhead(event);
 wlan_event_type = data[0];
 if (hwaddr_aton((char *) data + 1, wlan_event_mac) < 0) {
  wpa_printf(MSG_DEBUG, "WPS ER: Invalid WLANEventMAC in "
      "WLANEvent");
  return;
 }

 wpabuf_set(&msg, data + 1 + 17, wpabuf_len(event) - (1 + 17));

 switch (wlan_event_type) {
 case 1:
  wps_er_process_wlanevent_probe_req(ap, wlan_event_mac, &msg);
  break;
 case 2:
  wps_er_process_wlanevent_eap(ap, wlan_event_mac, &msg);
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS ER: Unknown WLANEventType %d",
      wlan_event_type);
  break;
 }
}
