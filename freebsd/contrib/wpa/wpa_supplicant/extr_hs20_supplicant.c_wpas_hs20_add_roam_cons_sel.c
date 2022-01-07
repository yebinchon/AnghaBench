
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_ssid {scalar_t__ roaming_consortium_selection_len; int roaming_consortium_selection; } ;


 scalar_t__ HS20_ROAMING_CONS_SEL_OUI_TYPE ;
 int OUI_WFA ;
 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

void wpas_hs20_add_roam_cons_sel(struct wpabuf *buf,
     const struct wpa_ssid *ssid)
{
 if (!ssid->roaming_consortium_selection ||
     !ssid->roaming_consortium_selection_len)
  return;

 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 wpabuf_put_u8(buf, 4 + ssid->roaming_consortium_selection_len);
 wpabuf_put_be24(buf, OUI_WFA);
 wpabuf_put_u8(buf, HS20_ROAMING_CONS_SEL_OUI_TYPE);
 wpabuf_put_data(buf, ssid->roaming_consortium_selection,
   ssid->roaming_consortium_selection_len);
}
