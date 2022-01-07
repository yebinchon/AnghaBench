
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WPS_DEV_OUI_WFA ;
 struct wpabuf* ieee802_11_vendor_ie_concat (int const*,size_t,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wps_attr_text (struct wpabuf*,char*,char*) ;

int wpas_wps_scan_result_text(const u8 *ies, size_t ies_len, char *buf,
         char *end)
{
 struct wpabuf *wps_ie;
 int ret;

 wps_ie = ieee802_11_vendor_ie_concat(ies, ies_len, WPS_DEV_OUI_WFA);
 if (wps_ie == ((void*)0))
  return 0;

 ret = wps_attr_text(wps_ie, buf, end);
 wpabuf_free(wps_ie);
 return ret;
}
