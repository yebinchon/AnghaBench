
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int P2P_ATTR_NOTICE_OF_ABSENCE ;
 int P2P_PRESENCE_RESP ;
 int p2p_buf_add_action_hdr (struct wpabuf*,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_noa (struct wpabuf*,int ,int ,int ,int *,int *) ;
 int p2p_buf_add_status (struct wpabuf*,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * p2p_build_presence_resp(u8 status, const u8 *noa,
            size_t noa_len, u8 dialog_token)
{
 struct wpabuf *resp;
 u8 *len;

 resp = wpabuf_alloc(100 + noa_len);
 if (resp == ((void*)0))
  return ((void*)0);

 p2p_buf_add_action_hdr(resp, P2P_PRESENCE_RESP, dialog_token);
 len = p2p_buf_add_ie_hdr(resp);
 p2p_buf_add_status(resp, status);
 if (noa) {
  wpabuf_put_u8(resp, P2P_ATTR_NOTICE_OF_ABSENCE);
  wpabuf_put_le16(resp, noa_len);
  wpabuf_put_data(resp, noa, noa_len);
 } else
  p2p_buf_add_noa(resp, 0, 0, 0, ((void*)0), ((void*)0));
 p2p_buf_update_ie_hdr(resp, len);

 return resp;
}
