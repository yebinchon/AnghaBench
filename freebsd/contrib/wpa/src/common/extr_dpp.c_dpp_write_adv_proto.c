
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int DPP_OUI_TYPE ;
 int OUI_WFA ;
 int WLAN_EID_ADV_PROTO ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void dpp_write_adv_proto(struct wpabuf *buf)
{

 wpabuf_put_u8(buf, WLAN_EID_ADV_PROTO);
 wpabuf_put_u8(buf, 8);
 wpabuf_put_u8(buf, 0x7f);
 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 wpabuf_put_u8(buf, 5);
 wpabuf_put_be24(buf, OUI_WFA);
 wpabuf_put_u8(buf, DPP_OUI_TYPE);
 wpabuf_put_u8(buf, 0x01);
}
