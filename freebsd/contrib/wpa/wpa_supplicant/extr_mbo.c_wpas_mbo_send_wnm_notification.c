
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int bssid; int own_addr; int assoc_freq; int mbo_wnm_token; int current_bss; } ;


 int MBO_IE_VENDOR_TYPE ;
 int MSG_DEBUG ;
 int WLAN_ACTION_WNM ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WNM_NOTIFICATION_REQ ;
 scalar_t__ WPA_COMPLETED ;
 int wpa_bss_get_vendor_ie (int ,int ) ;
 int wpa_drv_send_action (struct wpa_supplicant*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void wpas_mbo_send_wnm_notification(struct wpa_supplicant *wpa_s,
        const u8 *data, size_t len)
{
 struct wpabuf *buf;
 int res;






 if (wpa_s->wpa_state != WPA_COMPLETED || !wpa_s->current_bss ||
     !wpa_bss_get_vendor_ie(wpa_s->current_bss, MBO_IE_VENDOR_TYPE))
  return;

 buf = wpabuf_alloc(4 + len);
 if (!buf)
  return;

 wpabuf_put_u8(buf, WLAN_ACTION_WNM);
 wpabuf_put_u8(buf, WNM_NOTIFICATION_REQ);
 wpa_s->mbo_wnm_token++;
 if (wpa_s->mbo_wnm_token == 0)
  wpa_s->mbo_wnm_token++;
 wpabuf_put_u8(buf, wpa_s->mbo_wnm_token);
 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);

 wpabuf_put_data(buf, data, len);

 res = wpa_drv_send_action(wpa_s, wpa_s->assoc_freq, 0, wpa_s->bssid,
      wpa_s->own_addr, wpa_s->bssid,
      wpabuf_head(buf), wpabuf_len(buf), 0);
 if (res < 0)
  wpa_printf(MSG_DEBUG,
      "Failed to send WNM-Notification Request frame with non-preferred channel list");

 wpabuf_free(buf);
}
