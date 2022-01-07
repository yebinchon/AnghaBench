
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MBO_ATTR_ID_NON_PREF_CHAN_REPORT ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void wpas_mbo_non_pref_chan_subelem_hdr(struct wpabuf *mbo, u8 len)
{
 wpabuf_put_u8(mbo, WLAN_EID_VENDOR_SPECIFIC);
 wpabuf_put_u8(mbo, len);
 wpabuf_put_be24(mbo, OUI_WFA);
 wpabuf_put_u8(mbo, MBO_ATTR_ID_NON_PREF_CHAN_REPORT);
}
