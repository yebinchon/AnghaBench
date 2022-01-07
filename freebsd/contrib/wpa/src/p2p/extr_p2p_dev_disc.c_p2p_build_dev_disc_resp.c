
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int P2P_DEV_DISC_RESP ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int ) ;
 int p2p_buf_add_status (struct wpabuf*,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 struct wpabuf* wpabuf_alloc (int) ;

__attribute__((used)) static struct wpabuf * p2p_build_dev_disc_resp(u8 dialog_token, u8 status)
{
 struct wpabuf *buf;
 u8 *len;

 buf = wpabuf_alloc(100);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_public_action_hdr(buf, P2P_DEV_DISC_RESP, dialog_token);

 len = p2p_buf_add_ie_hdr(buf);
 p2p_buf_add_status(buf, status);
 p2p_buf_update_ie_hdr(buf, len);

 return buf;
}
