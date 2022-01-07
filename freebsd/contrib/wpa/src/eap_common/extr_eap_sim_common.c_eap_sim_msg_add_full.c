
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {int buf; } ;


 int os_memset (int*,int ,int) ;
 int* wpabuf_put (int ,int) ;
 int wpabuf_put_data (int ,int const*,size_t) ;
 int wpabuf_put_u8 (int ,int) ;
 scalar_t__ wpabuf_resize (int *,int) ;

u8 * eap_sim_msg_add_full(struct eap_sim_msg *msg, u8 attr,
     const u8 *data, size_t len)
{
 int attr_len = 2 + len;
 int pad_len;
 u8 *start;

 if (msg == ((void*)0))
  return ((void*)0);

 pad_len = (4 - attr_len % 4) % 4;
 attr_len += pad_len;
 if (wpabuf_resize(&msg->buf, attr_len))
  return ((void*)0);
 start = wpabuf_put(msg->buf, 0);
 wpabuf_put_u8(msg->buf, attr);
 wpabuf_put_u8(msg->buf, attr_len / 4);
 wpabuf_put_data(msg->buf, data, len);
 if (pad_len)
  os_memset(wpabuf_put(msg->buf, pad_len), 0, pad_len);
 return start;
}
