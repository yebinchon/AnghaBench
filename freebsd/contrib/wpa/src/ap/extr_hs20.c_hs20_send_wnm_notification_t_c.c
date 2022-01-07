
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int freq; } ;


 size_t HS20_WNM_T_C_ACCEPTANCE ;
 int MSG_INFO ;
 int OUI_WFA ;
 size_t WLAN_ACTION_WNM ;
 size_t WLAN_EID_VENDOR_SPECIFIC ;
 size_t WNM_NOTIFICATION_REQ ;
 int hostapd_drv_send_action (struct hostapd_data*,int ,int ,int const*,int ,int ) ;
 size_t os_strlen (char const*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char const*) ;
 int wpabuf_put_u8 (struct wpabuf*,size_t) ;

int hs20_send_wnm_notification_t_c(struct hostapd_data *hapd,
       const u8 *addr, const char *url)
{
 struct wpabuf *buf;
 int ret;
 size_t url_len;

 if (!url) {
  wpa_printf(MSG_INFO, "HS 2.0: No T&C Server URL available");
  return -1;
 }

 url_len = os_strlen(url);
 if (5 + url_len > 255) {
  wpa_printf(MSG_INFO,
      "HS 2.0: Too long T&C Server URL for WNM-Notification: '%s'",
      url);
  return -1;
 }

 buf = wpabuf_alloc(4 + 7 + url_len);
 if (!buf)
  return -1;

 wpabuf_put_u8(buf, WLAN_ACTION_WNM);
 wpabuf_put_u8(buf, WNM_NOTIFICATION_REQ);
 wpabuf_put_u8(buf, 1);
 wpabuf_put_u8(buf, 1);


 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 wpabuf_put_u8(buf, 4 + 1 + url_len);
 wpabuf_put_be24(buf, OUI_WFA);
 wpabuf_put_u8(buf, HS20_WNM_T_C_ACCEPTANCE);
 wpabuf_put_u8(buf, url_len);
 wpabuf_put_str(buf, url);

 ret = hostapd_drv_send_action(hapd, hapd->iface->freq, 0, addr,
          wpabuf_head(buf), wpabuf_len(buf));

 wpabuf_free(buf);

 return ret;
}
