
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int ACCESS_NETWORK_QUERY_PROTOCOL ;
 int WLAN_EID_ADV_PROTO ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void gas_add_adv_proto_anqp(struct wpabuf *buf, u8 query_resp_len_limit,
       u8 pame_bi)
{

 wpabuf_put_u8(buf, WLAN_EID_ADV_PROTO);
 wpabuf_put_u8(buf, 2);
 wpabuf_put_u8(buf, (query_resp_len_limit & 0x7f) |
        (pame_bi ? 0x80 : 0));

 wpabuf_put_u8(buf, ACCESS_NETWORK_QUERY_PROTOCOL);
}
