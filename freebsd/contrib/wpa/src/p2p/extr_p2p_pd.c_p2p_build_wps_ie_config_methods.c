
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_CONFIG_METHODS ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPS_DEV_OUI_WFA ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void p2p_build_wps_ie_config_methods(struct wpabuf *buf,
         u16 config_methods)
{
 u8 *len;
 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 len = wpabuf_put(buf, 1);
 wpabuf_put_be32(buf, WPS_DEV_OUI_WFA);


 wpabuf_put_be16(buf, ATTR_CONFIG_METHODS);
 wpabuf_put_be16(buf, 2);
 wpabuf_put_be16(buf, config_methods);

 p2p_buf_update_ie_hdr(buf, len);
}
