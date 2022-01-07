
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ANQP_VENDOR_SPECIFIC ;
 int P2P_IE_VENDOR_TYPE ;
 int * gas_anqp_add_element (struct wpabuf*,int ) ;
 struct wpabuf* gas_anqp_build_initial_resp (int ,int ,int ,int) ;
 int gas_anqp_set_element_len (struct wpabuf*,int *) ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf const*) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * p2p_build_sd_response(u8 dialog_token, u16 status_code,
          u16 comeback_delay,
          u16 update_indic,
          const struct wpabuf *tlvs)
{
 struct wpabuf *buf;
 u8 *len_pos;

 buf = gas_anqp_build_initial_resp(dialog_token, status_code,
       comeback_delay,
       100 + (tlvs ? wpabuf_len(tlvs) : 0));
 if (buf == ((void*)0))
  return ((void*)0);

 if (tlvs) {

  len_pos = gas_anqp_add_element(buf, ANQP_VENDOR_SPECIFIC);
  wpabuf_put_be32(buf, P2P_IE_VENDOR_TYPE);

  wpabuf_put_le16(buf, update_indic);
  wpabuf_put_buf(buf, tlvs);
  gas_anqp_set_element_len(buf, len_pos);
 }

 gas_anqp_set_len(buf);

 return buf;
}
