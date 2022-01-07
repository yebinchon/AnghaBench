
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ wpabuf_put (struct wpabuf*,int ) ;

void p2p_buf_update_ie_hdr(struct wpabuf *buf, u8 *len)
{

 *len = (u8 *) wpabuf_put(buf, 0) - len - 1;
}
