
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPS_DEV_OUI_WFA ;
 int WPS_RESP_AP ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 scalar_t__* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 scalar_t__ wps_build_resp_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;

struct wpabuf * wps_build_assoc_resp_ie(void)
{
 struct wpabuf *ie;
 u8 *len;

 wpa_printf(MSG_DEBUG, "WPS: Building WPS IE for (Re)Association "
     "Response");
 ie = wpabuf_alloc(100);
 if (ie == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(ie, WLAN_EID_VENDOR_SPECIFIC);
 len = wpabuf_put(ie, 1);
 wpabuf_put_be32(ie, WPS_DEV_OUI_WFA);

 if (wps_build_version(ie) ||
     wps_build_resp_type(ie, WPS_RESP_AP) ||
     wps_build_wfa_ext(ie, 0, ((void*)0), 0, 0)) {
  wpabuf_free(ie);
  return ((void*)0);
 }

 *len = wpabuf_len(ie) - 2;

 return ie;
}
