
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;


 int ANQP_VENDOR_SPECIFIC ;
 int BIT (int) ;
 int HS20_ANQP_OUI_TYPE ;
 int HS20_STYPE_ICON_REQUEST ;
 int HS20_STYPE_NAI_HOME_REALM_QUERY ;
 int HS20_STYPE_QUERY_LIST ;
 int OUI_WFA ;
 int* gas_anqp_add_element (struct wpabuf*,int ) ;
 int gas_anqp_set_element_len (struct wpabuf*,int*) ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

void hs20_put_anqp_req(u32 stypes, const u8 *payload, size_t payload_len,
         struct wpabuf *buf)
{
 u8 *len_pos;

 if (buf == ((void*)0))
  return;

 len_pos = gas_anqp_add_element(buf, ANQP_VENDOR_SPECIFIC);
 wpabuf_put_be24(buf, OUI_WFA);
 wpabuf_put_u8(buf, HS20_ANQP_OUI_TYPE);
 if (stypes == BIT(HS20_STYPE_NAI_HOME_REALM_QUERY)) {
  wpabuf_put_u8(buf, HS20_STYPE_NAI_HOME_REALM_QUERY);
  wpabuf_put_u8(buf, 0);
  if (payload)
   wpabuf_put_data(buf, payload, payload_len);
 } else if (stypes == BIT(HS20_STYPE_ICON_REQUEST)) {
  wpabuf_put_u8(buf, HS20_STYPE_ICON_REQUEST);
  wpabuf_put_u8(buf, 0);
  if (payload)
   wpabuf_put_data(buf, payload, payload_len);
 } else {
  u8 i;
  wpabuf_put_u8(buf, HS20_STYPE_QUERY_LIST);
  wpabuf_put_u8(buf, 0);
  for (i = 0; i < 32; i++) {
   if (stypes & BIT(i))
    wpabuf_put_u8(buf, i);
  }
 }
 gas_anqp_set_element_len(buf, len_pos);

 gas_anqp_set_len(buf);
}
