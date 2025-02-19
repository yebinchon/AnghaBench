
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct wpabuf {int dummy; } ;


 scalar_t__ ANQP_VENDOR_SPECIFIC ;
 int P2P_IE_VENDOR_TYPE ;
 struct wpabuf* gas_anqp_build_comeback_resp (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__ const*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_build_gas_comeback_resp(u8 dialog_token,
         u16 status_code,
         u16 update_indic,
         const u8 *data, size_t len,
         u8 frag_id, u8 more,
         u16 total_len)
{
 struct wpabuf *buf;

 buf = gas_anqp_build_comeback_resp(dialog_token, status_code, frag_id,
        more, 0, 100 + len);
 if (buf == ((void*)0))
  return ((void*)0);

 if (frag_id == 0) {

  wpabuf_put_le16(buf, ANQP_VENDOR_SPECIFIC);
  wpabuf_put_le16(buf, 3 + 1 + 2 + total_len);
  wpabuf_put_be32(buf, P2P_IE_VENDOR_TYPE);

  wpabuf_put_le16(buf, update_indic);
 }

 wpabuf_put_data(buf, data, len);
 gas_anqp_set_len(buf);

 return buf;
}
